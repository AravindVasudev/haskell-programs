{-
Sample Code learnt from Derek Banas's tutorial.
https://youtu.be/02_H3LjqMr8
-}


-- Comment
{-
Multiline commment
-}

import Data.List
import System.IO

{-
Datatypes:
Int, Integer(Boundless), Float, Double(11 precision), Bool, Char, Tuple
-}

-- Int 2^-63 to 2^63
maxInt = maxBound :: Int
minInt = minBound :: Int

-- Infix Arithematic Operators
addEx = 5 + 4
subEx = 5 - 4
mulEx = 5 * 4
divEx = 5 / 4

-- Postfix Arithematic Operators
modEx = mod 5 4
modEx2 = 5 `mod` 4 -- infix

-- sum of 1 to 100
sumOfNums = sum [1..100]

-- Working with negative numbers
negNumEx = 5 + (-4) -- Brackets should be added around the number

-- Int to Float
num9 = 9 :: Int
sqrtOf9 = sqrt(fromIntegral num9)

-- Built-In Math Functions
piVal = pi
ePow9 = exp 9
logOf9 = log 9
squared9 = 9 ** 2
truncateVal = truncate 9.999
roundVal = round 9.999
ceilingVal = ceiling 9.999
floorVal = floor 9.999
-- sin, cos, tan, asin, acos, atan, sinh, cosh, tanh, asinh, acosh, atanh

-- Booleans
trueAndFalse = True && False
trueOrFalse = True || False
notTrue = not(True)

{-
lists
List in Haskell are singly linked
-}

primeNumbers = [3, 5, 7, 11]
morePrimes = primeNumbers ++ [13, 17, 19, 23, 29]
multList = [[3, 5, 7], [11, 13, 17]]

-- cons operator
favNums = 2 : 7 : 21 : 66 : []
morePrimes2 = 2 : morePrimes

lenPrime = length morePrimes2
revPrime = reverse morePrimes2
isListEmpty = null morePrimes2
secondPrime = morePrimes2 !! 1
firstPrime = head morePrimes2
lastPrime = last morePrimes2
primeInit = init morePrimes2
first3Primes = take 3 morePrimes2
removed3Primes = drop 3 morePrimes2
is7InList =  7 `elem` morePrimes2
maxPrime = maximum morePrimes2
minPrime = minimum morePrimes2
prodPrime = product morePrimes2

zeroToTen = [0..10]
evenList = [2,4..20]
letterList = ['A', 'C'..'Z']
infinPow10 = [10, 20..]
many2s = take 10 (repeat 2)
many3s = replicate 10 3
cycleList = take 10 (cycle [1..5])
listTimes2 = [x * 2 | x <- [1..10]]
listTimes3Filtered = [x * 3 | x <- [1..10], x * 3 <= 50]
divisBy9N13 = [x | x <- [1..500], x `mod` 13 == 0, x `mod` 9 == 0]
sortedList = sort  [9, 11, 2, 3, 8]
sumOfLists = zipWith (+) [1, 2, 3, 4, 5] [6, 7, 8, 9, 10]
listBiggerThan5 = filter (>5) morePrimes2
evensUpTo20 = takeWhile (<= 20) [2, 4..]
multOfList = foldl (*) 1 [2, 3, 4, 5] -- left to right
multOfList2 = foldr (*) 1 [2, 3, 4, 5] -- right to left

-- list comprehension
pow3List = [3^n | n <- [1..10]]
multTable = [[x * y | y <- [1..10]] | x <- [1..10]]

{-
Tuple
Similar to list, but can hold mutliple data type
-}
randTuple = (1, "Random Tuple")
aravind = ("Aravind Vasudevan", 21)
aravindName = fst aravind
aravindAge = snd aravind

-- zip combines values in teo lists into tuple pairs
names = ["Bob", "Mary", "Tom"]
address = ["123 Main", "234 North", "567 South"]

nameNAddress = zip names address


-- function
main = do
  putStrLn "What's up?"
  name <- getLine
  putStrLn ("Hello " ++ name)

addMe :: Int -> Int -> Int
-- funcName param1 param2 = operations (returned value)
addMe x y = x + y

sumMe x y = x + y

addTuples :: (Int, Int) -> (Int, Int) -> (Int, Int)
addTuples (x, y) (x2, y2) = (x + x2, y + y2)

whatAge :: Int -> String

whatAge 16 = "You can drive"
whatAge 18 = "You can vote"
whatAge 21 = "You are an adult"
whatAge _ = "Nothing Important"

-- recursion
factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial (n - 1)

prodFact n = product [1..n]

isOdd n
  | n `mod` 2 == 0 = False
  | otherwise = True

isEven n = n `mod` 2 == 0

whatGrade :: Int -> String
whatGrade age
  | (age >= 6) && (age <= 6) = "Kindergarden"
  | (age > 6) && (age <= 10) = "Elementary School"
  | (age > 10) && (age <= 14) = "Middle School"
  | (age > 14) && (age <= 18) = "High School"
  | otherwise = "Go to college"

batAvgRating :: Double -> Double -> String
batAvgRating hits atBats
  | avg <= 0.200 = "Terrible"
  | avg <= 0.250 = "Average"
  | avg <= 0.280 = "Good"
  | otherwise = "Awesome"
  where avg = hits / atBats

getListItems :: [Int] -> String
getListItems [] = "Your List is Empty"
getListItems (x:[]) = "your list starts with " ++ show x
getListItems (x:y:[]) = "your list contains " ++ show x ++ " and " ++ show y
getListItems (x:xs) = "1st" ++ show x ++ " rest: " ++ show xs

getFirstItem :: String -> String
getFirstItem [] = "Empty String"
getFirstItem all@(x:xs) = "The first letter in " ++ all ++ " is " ++ show x

times4 :: Int -> Int
times4 x = x * 4

listTimes4 = map times4 [1..5]

multBy4 :: [Int] -> [Int]
multBy4 [] = []
multBy4 (x:xs) = times4 x : multBy4 xs

areStringEq :: [Char] -> [Char] -> Bool
areStringEq [] [] = True
areStringEq (x:xs) (y:ys) = x == y && areStringEq xs ys
areString _ _ = False

doMult :: (Int -> Int) -> Int
doMult func = func 3

num3Times4 = doMult times4

getAddFunc :: Int -> (Int -> Int)
getAddFunc x y = x + y

add3 = getAddFunc 3
fourPlus3 = add3 4

-- lambda
dbl1To10 = map (\x -> x * 2) [1..10]

-- conditionals
-- < > <= >= == /=
-- && || not

doubleEvenNumber y =
  if (y `mod` 2 /= 0)
    then y
    else y * 2

getClass :: Int -> String
getClass n = case n of
  5 -> "Kindergarden"
  6 -> "Elementary"
  _ -> "Go away"

data BaseballPlayer = Pitcher
                    | Catcher
                    | Infielder
                    | Outfield
                  deriving Show

barryBonds :: BaseballPlayer -> Bool
barryBonds Outfield = True

barryInOF = print(barryBonds Outfield)

-- custom types
data Customer = Customer String String Double
  deriving Show

aravindVasudevan :: Customer
aravindVasudevan = Customer "Aravind Vasudevan" "123 Main" 21.50

getBalance :: Customer -> Double
getBalance (Customer _ _ b) = b

data RPS = Rock | Paper | Scissors

shoot :: RPS -> RPS -> String
shoot Paper Rock = "Paper beats Rock"
shoot Rock Scissors = "Rock beats Scissors"
shoot Scissors Paper = "Scissors beats Paper"
shoot Scissors Rock = "Scissors loses to Rock"
shoot Paper Scissors = "Paper loses to Scissors"
shoot Rock Paper = "Rock Loses to Paper"
shoot _ _ = "Error"

data Shape = Circle Float Float Float | Rectangle Float Float Float Float
  deriving Show

area :: Shape -> Float
area (Circle _ _ r) = pi * r ^ 2
area (Rectangle x1 y1 x2 y2) = (abs $ x2 - x1) * (abs $ x2 - y1)

areaOfCircle = area (Circle 50 60 20)
areaOfRect = area $ Rectangle 10 10 100 100

sumValue = putStrLn (show (1 + 2))
sumValue2 = putStrLn . show $ 1 + 2

-- Type Class
-- Num, Eq, Show

data Employee = Employee { name :: String,
  position :: String,
  idNum :: Int
} deriving (Eq, Show)

samSmith = Employee {name = "Sam Smith", position = "Manager", idNum = 1000}
pamMarx = Employee {name = "Pam Marx", position = "Sales", idNum = 1001}

isSamPam = samSmith == pamMarx
samSmithData = show samSmith

data ShirtSize = S | M | L

instance Eq ShirtSize where
  S == S = True
  M == M = True
  L == L = True
  _ == _ = False

instance Show ShirtSize where
  show S = "Small"
  show M = "Medium"
  show L = "Large"

smallAvail = S `elem` [S, M, L]
theSize = show S

class MyEq a where
  areEqual :: a -> a -> Bool

instance MyEq ShirtSize where
  areEqual S S = True
  areEqual M M = True
  areEqual L L = True
  areEqual _ _ = False

newSize = areEqual M M

sayHello = do
  putStrLn "What's your name?"
  name <- getLine
  putStrLn $ " Hello " ++ name

writeToFile = do
  theFile <- openFile "test.txt" WriteMode
  hPutStrLn theFile ("Random line of text")
  hClose theFile

readFromFile = do
  theFile2 <- openFile "test.txt" ReadMode
  contents <- hGetContents theFile2
  putStr contents
  hClose theFile2

fib = 1 : 1 : [a + b | (a, b) <- zip fib (tail fib)]
fib300 = fib !! 300
fibFirst20 = take 20 fib
