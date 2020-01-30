module Recursion where

-- This module is a place for me to try out recursion

factorial :: Integer -> Integer
factorial 0 = 1                     -- base case as a pattern match
factorial n = n * factorial (n - 1) -- recursion step

fibonacci :: Integer -> Integer
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci i = fibonacci (i - 1) + fibonacci (i - 2)

intDiv :: Integer -> Integer -> Integer
intDiv _ 0 = error "You cannot divide by 0"
intDiv a 1 = a
intDiv a b = if a == b then 1 else 1 + intDiv (a - b) b

-- The one in the book returns a remainder:
textbookIntDiv :: Integral a => a -> a -> (a, a)
textbookIntDiv num denom = go num denom 0
  where go n d count
         | n < d = (count, n)         -- base case
         | otherwise =                -- recrusion step
             go (n - d) d (count + 1) -- using a tuple here to pass along the count each time


-- modify to handle negatives
-- and divide by 0

data DividedResult =
    Result Integer Integer
  | DividedByZero deriving Show

negIntDiv :: Integer -> Integer -> DividedResult
negIntDiv num denom
  | denom == 0 = DividedByZero
  | posSign    = Result (fst posResult) (snd posResult)
  | otherwise  = Result (- (fst posResult)) (snd posResult)
      where posResult = textbookIntDiv num denom
            posSign   = num < 0 && denom < 0 ||
                        num > 0 && denom > 0
