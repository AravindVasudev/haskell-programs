module Main
  where
  
main :: IO()
main = do
  putStrLn "Enter a number:"
  n <- getLine -- read the number
  print (fact $ read n) -- print the factorial
 
fact :: Int -> Int
fact n = product [1..n] -- returns factorial of n
