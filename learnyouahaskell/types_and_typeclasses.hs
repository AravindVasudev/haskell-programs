import Data.Typeable

-- Data Types
-- Int, Integer, Float, Double, Bool, Char, Tuple

-- Type Variables
-- Similar to generics in OO 

-- Type Classes
-- Similar to Interfaces in OO
-- eg: Eq, Ord, Show, Read, Enum, Bounded, Num, Integral, Floating
-- fromIntegral converts Integral to Num [ fromIntegral :: (Num b, Integral a) => a -> b ]


main :: IO()
main = do
  putStrLn ("type of `hi` is: " ++ show (typeOf "hi"))
