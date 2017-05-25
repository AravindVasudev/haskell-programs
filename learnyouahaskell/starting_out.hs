-- functions
doubleMe :: Int -> Int
doubleMe x = x + x

doubleUs :: Int -> Int -> Int
doubleUs x y = x * 2 + y * 2

doubleUs2 :: Int -> Int -> Int
doubleUs2 x y = doubleMe x + doubleMe y

doubleSmallNumber :: Int -> Int
doubleSmallNumber x = if x > 100
                      then x
                      else doubleMe x

doubleSmallNumber' :: Int -> Int
doubleSmallNumber' x = (if x > 100 then x else doubleMe x) + 1

conanO'Brien = "It's a-me, Conan O'Brien!" :: String

-- lists
list1 = [1, 2, 3, 4]
list2 = [5, 6, 7, 8]

list3 = list1 ++ list2 -- join list

list4 = 0 : list1 -- cons operator
list5 = 'H' : "ASKELL" -- cons operator

val1 = list1 !! 3 -- 4th element of list1

multiList = [[1,2,3,4],[5,3,3,3],[1,2,2,3,4],[1,2,3]]
multiList2 = [1, 1, 1, 1] : multiList

-- Lists are compared in lexicographical order
list1LessThanList2 = list1 < list2 -- true

-- list operators
list1Head = head list1 -- first element
list1Tail = tail list1 -- list except first element
list1Last = last list1 -- last element
list1Init = init list1 -- list except last element

list1Length = length list1 -- length of the list
list1Check = null list1 -- checks if the list is null
list1Reverse = reverse list1 -- reverse a list

list1Take2 = take 2 list1 -- extracts a given number of elements from a list
list1Drop2 = drop 2 list1 -- drops the given number of elements from a list

list1Maximum = maximum list1 -- max of list1
list1Minimum = minimum list1 -- min of list1

list1Sum = sum list1 -- sum of list1 elements
list1Product = product list1 -- product of list1 elements
is1InList1 = 1 `elem` list1 -- checks if 1 is in list1

-- ranges
oneToTen = [1..10]
aToZ = ['a'..'z']

evenNumbersWithin100 = [2,4..100] -- range with step
twentyToOne = [20,19..1]

floatingPointRange = [0.1,0.3..1] -- do not work as intended. Avoid them as much as possible

infiniteList = [13,26..] -- infinite list
first10 = take 10 infiniteList

cycle10List1 = take 10 $ cycle list1 -- cycles through the list indefinitely
ten5s = take 10 (repeat 5) -- repeat the same element
ten6s = replicate 10 6 -- same as above

-- list comprehensions
doubleList1 = [x * 2 | x <- list1]
listComprehensionWithPredicate = [x*2 | x <- [1..10], x*2 >= 12]

divisibleBy7 = [ x | x <- [50..100], x `mod` 7 == 0] -- filtering
boomBangs = [ if x < 10 then "BOOM!" else "BANG!" | x <- [1..15], odd x]

drawFromMultipleList = [x * y | x <- list1, y <- list2]

nouns = ["hobo","frog","pope"]
adjectives = ["lazy","grouchy","scheming"]
nounsAndAdjectives = [adjective ++ " " ++ noun | adjective <- adjectives, noun <- nouns]

length' xs = sum [1 | _ <- xs] -- returns length of xs
removeNonUppercase st = [ c | c <- st, c `elem` ['A'..'Z']]

-- Tuples
tuple1 = ("Aravind Vasudevan", 20)

firstElement = fst tuple1 -- works only on tuple pair
secondElement = snd tuple1 -- works only on tuple pair

zipList1List2 = zip list1 list2

rightTriangles = [ (a,b,c) | c <- [1..10], b <- [1..c], a <- [1..b], a^2 + b^2 == c^2]
rightTriangles' = [ (a,b,c) | c <- [1..10], b <- [1..c], a <- [1..b], a^2 + b^2 == c^2, a+b+c == 24]
