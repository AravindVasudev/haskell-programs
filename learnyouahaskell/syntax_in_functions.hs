main = do
  -- pattern matching
  putStrLn $ is7 14
  putStrLn $ is7 7
  putStrLn $ is7 9
  
  -- recursive factorial
  putStrLn $ show $ factorial 5
  
  -- midpoint
  let midpt = midpoint (1, 1) (3, 3)
  putStrLn $ "The midpoint of (1, 1) and (3, 3) is " ++ show midpt

  -- pattern matching in list
  let pts = [(1,3), (4,3), (2,4), (5,3), (5,6), (3,1)]
  putStrLn $ show [a+b | (a,b) <- pts]
  
  -- error function
  putStrLn "1 OR 0? : "
  num <- getLine
  putStrLn $ throwMeOne (read num :: Int)
  
  -- length recursion
  putStrLn $ show $ length' [1, 2, 3]
  
  --patterns
  putStrLn $ show $ redeque [1, 2, 3]
  
  -- gaurds
  putStrLn $ rangeCheck 3 33
  putStrLn $ show $ max' 1 2
  
  -- inline definition
  putStrLn $ show $ addYo 2 3
  
  --let binding
  putStrLn $ show $ square3 1 2 3
  
  -- case expression
  putStrLn $ describeList []
  
  
-- pattern matching
is7 :: (Integral a) => a -> String
is7 7 = "Yep."
is7 14 = "Yep * 2"
is7 x = "Nope."

-- recursive factorial
factorial :: (Integral a) => a -> a  
factorial 0 = 1  
factorial n = n * factorial (n - 1) 

-- midpoint
midpoint :: (Floating a) => (a, a) -> (a, a) -> (a, a)
-- midpoint a b = (((fst a + fst b) / 2), ((snd a + snd b) / 2))
midpoint (x1, y1) (x2, y2) = (((x1 + x2) / 2), ((y1 + y2) / 2))

-- throws error
throwMeOne :: Int -> String
throwMeOne 0 = "We're cool homie."
throwMeOne x = error "Quit messin' with me homie"

-- length recursion
length' :: (Num b) => [a] -> b  
length' [] = 0  
length' (_:xs) = 1 + length' xs

-- patterns
-- This lets you get a hold of both the original list and the broken list
-- The eg adds makes a duplicate of the head and pushes it to the list
redeque :: [a] -> [a]
redeque a@(x:_) = x:a

-- gaurds
-- similar to if else lader
rangeCheck :: Int -> Int -> String
rangeCheck a b
  | c <= low = "Less than 10"
  | c <= medium = "Less than 20"
  | c <= high = "Less than 30"
  | otherwise = "This number is HUUUUUUUGE!"
  where c = a + b
        (low, medium, high) = (10, 20, 30)
  
-- gaurds can be written inline too!
max' :: (Ord a) => a -> a -> a  
max' a b | a > b = a | otherwise = b  

-- functions can be defined inline with backticks
addYo :: (Num a) => a -> a -> a
a `addYo` b = a + b

-- let binding test
square3 :: Int -> Int -> Int -> (Int, Int, Int)
square3 a b c = 
  let sq x = x * x
  in (sq a, sq b, sq c)
  
-- case expression
describeList :: [a] -> String  
describeList xs = "The list is " ++ case xs of [] -> "empty."  
                                               [x] -> "a singleton list."   
                                               xs -> "a longer list." 
