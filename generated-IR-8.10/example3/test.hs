f n = if n > 1 then n + (f (n-1)) else 1
main = print (f 3)
