{-# LANGUAGE ScopedTypeVariables #-}

import System.IO as SIO
import Data.Text as T hiding (null, filter)
import Data.Text.IO as TIO
import Control.Monad
import Data.Maybe
import Data.List (sortBy)
import Data.Monoid
import Data.Ord

import Options.Applicative
import Text.PrettyPrint.ANSI.Leijen hiding ((<$>), (<>))
import qualified Text.PrettyPrint.ANSI.Leijen as PP

import Text.Regex.TDFA
import Text.Regex.TDFA.Common (Regex)
import Text.Regex.TDFA.Text ()

import GhcDump.Pretty
import GhcDump.Util
import GhcDump.Ast

data Column a = Col { colWidth :: Int, colHeader :: String, colGet :: (a -> Doc) }

type Table a = [Column a]

prettyPrintAST :: Text -> Text
prettyPrintAST str =
  prettyPrintASThelper str 0 (T.empty)
  where
    appendSpaces num =
      if num < 0 then (T.pack "\t")
      else (T.pack "\t") `T.append` (appendSpaces (num-1))
    prettyPrintASThelper st dep final_str =
      if st == T.empty then final_str
      else
        let
          h = (T.head st)
          t = T.tail st
        in
        if h == '{' then prettyPrintASThelper t (dep+1) (final_str `T.append` (T.pack "\n") `T.append` (appendSpaces dep) `T.append` (singleton h))
        else if h == '}' then prettyPrintASThelper t (dep-1) (final_str `T.append` (T.pack "\n") `T.append` (appendSpaces dep) `T.append` (singleton h))
        else if h == ',' then prettyPrintASThelper t dep (final_str `T.append` (T.pack " ") `T.append` (singleton h) `T.append` (T.pack "\n") `T.append` (appendSpaces (dep)))
        else prettyPrintASThelper t dep (final_str `T.append` (singleton h))


renderTable :: forall a. Table a -> [a] -> Doc
renderTable cols xs =
         row (PP.bold . text . colHeader)
    <$$> vcat [ row (flip colGet x) | x <- xs ]
  where
    row :: (Column a -> Doc) -> Doc
    row toCell = go cols
      where
        go :: [Column a] -> Doc
        go []           = PP.empty
        go [col]        = align $ toCell col
        go (col : rest) = fillBreak (colWidth col) (align $ toCell col) PP.<+> go rest

filterBindings :: Regex -> Module -> Module
filterBindings re m =
    m { moduleTopBindings = mapMaybe filterTopBinding $ moduleTopBindings m }
  where
    filterTopBinding b'@(NonRecTopBinding b _ _)
      | nameMatches b  = Just b'
      | otherwise      = Nothing
    filterTopBinding (RecTopBinding bs)
      | not $ null bs' = Just $ RecTopBinding bs'
      | otherwise      = Nothing
      where bs' = filter (\(b,_,_) -> nameMatches b) bs

    nameMatches :: Binder -> Bool
    nameMatches b = matchTest re (binderUniqueName b)

modes :: Parser (IO ())
modes = subparser
     $ mode "show" showMode (progDesc "print Core")
    <> mode "list-bindings" listBindingsMode (progDesc "list top-level bindings, their sizes, and types")
    <> mode "summarize" summarizeMode (progDesc "summarize multiple dump files")
    <> mode "showAST" showASTMode (progDesc "print core AST module")
  where
    mode name f opts = command name (info (helper <*> f) opts)

    dumpFile :: Parser FilePath
    dumpFile = argument str (metavar "DUMP FILE" <> help "CBOR dump file")

    filterCond :: Parser (Module -> Module)
    filterCond =
        fmap (maybe id filterBindings)
        $ option (str >>= fmap Just . makeRegexM')
                 (short 'f' <> long "filter" <> value Nothing <> help "filter bindings by name")
      where
        makeRegexM' = makeRegexM :: String -> ReadM Regex

    prettyOpts :: Parser PrettyOpts
    prettyOpts =
        PrettyOpts
          <$> switch (short 'u' <> long "show-uniques" <> help "Show binder uniques")
          <*> switch (short 'i' <> long "show-idinfo" <> help "Show IdInfo of bindings")
          <*> switch (short 'T' <> long "show-let-types" <> help "Show type signatures for let-bound binders")
          <*> switch (short 'U' <> long "show-unfoldings" <> help "Show unfolding templates")

    showMode =
        run <$> filterCond <*> prettyOpts <*> dumpFile
      where
        run filterFn opts fname = do
            dump <- filterFn <$> GhcDump.Util.readDump fname
            print $ pprModule opts dump

    showASTMode =
        run <$> filterCond <*> dumpFile
      where
        outputfname fn = T.unpack (T.replace (T.pack ".cbor") (T.pack ".txt") (T.pack fn))
        run filterFn fname = do
            dump <- filterFn <$> GhcDump.Util.readDump fname
            TIO.writeFile (outputfname fname) (prettyPrintAST (T.pack (show dump)))


    listBindingsMode =
        run <$> filterCond <*> sortField <*> prettyOpts <*> dumpFile
      where
        sortField =
            option (str >>= readSortField)
                   (long "sort" <> short 's' <> value id
                    <> help "Sort by (accepted values: terms, types, coercions, type)")
          where
            readSortField "terms"     = return $ sortBy (flip $ comparing $ csTerms . getStats)
            readSortField "types"     = return $ sortBy (flip $ comparing $ csTypes . getStats)
            readSortField "coercions" = return $ sortBy (flip $ comparing $ csCoercions . getStats)
            readSortField "type"      = return $ sortBy (comparing $ binderType . unBndr . getBinder)
            readSortField f           = fail $ "unknown sort field "++f

        run filterFn sortBindings opts fname = do
            dump <- filterFn <$> GhcDump.Util.readDump fname
            let table = [ Col 20 "Name"   (pprBinder opts . getBinder)
                        , Col 6  "Terms"  (pretty . csTerms . getStats)
                        , Col 6  "Types"  (pretty . csTypes . getStats)
                        , Col 6  "Coerc." (pretty . csCoercions . getStats)
                        , Col 300 "Type"  (pprType opts . binderType . unBndr . getBinder)
                        ]
            print $ renderTable table (sortBindings $ moduleBindings dump)

    summarizeMode =
        run <$> some dumpFile
      where
        run fnames = do
            mods <- mapM (\fname -> do mod <- readDump fname
                                       return (fname, mod)) fnames
            let totalSize :: Module -> CoreStats
                totalSize = foldMap getStats . moduleBindings
            let table = [ Col 35 "Name" (text . fst)
                        , Col 8  "Terms" (pretty . csTerms . totalSize . snd)
                        , Col 8  "Types" (pretty . csTypes . totalSize . snd)
                        , Col 8  "Coerc." (pretty . csCoercions . totalSize . snd)
                        , Col 35 "Previous phase" (pretty . modulePhase . snd)
                        ]
            print $ renderTable table mods


getBinder (b,_,_) = b
getStats (_,s,_) = s
getRHS (_,_,e) = e

main :: IO ()
main = join $ execParser $ info (helper <*> modes) mempty
