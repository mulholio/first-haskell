module EnumFuncs where

import Data.Maybe

-- eFromTo :: Eq a => a -> a -> [a]
-- eFromTo n m
--   | n == m = [n]

eftBool :: Bool -> Bool -> [Bool]
eftBool x y
  | x == y    = [x]
  | otherwise = [x, y]

-- Data Ordering = LT | EQ | GT
eftOrd :: Ordering -> Ordering -> [Ordering]
eftOrd x y
  | x == y        = [x]
  | (succ x) == y = [x, y] 
  | otherwise     = x : eftOrd (succ x) y

eftInt :: Int -> Int -> [Int]
eftInt n m
  | n == m    = [n]
  | n > m     = []
  | otherwise = n : eftInt (succ n) m
