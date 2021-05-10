
fib 0 = 0
fib n = fac (n-1) + fac (n-2)

fac 0 = 1
fac n = n * fib (n - 1)

main =
  do let x = 4
     -- print (fib x)
     print (fib x)
     let x = 8
     print (fac x)
     print (fib x)
