module RecursionExercises where

-- 1. Write out the steps for reducing dividedBy 15 2 to its
--    final answer according to the Haskell code.

-- 2. Write a function that recursively sums all numbers
--    from 1 to n, n being the argument. So that if n was 5,
--    you’d add 1 + 2 + 3 + 4 + 5 to get 15. The type should
--    be (Eq a, Num a) => a -> a.

mySum :: (Eq a, Num a) => a -> a
mySum 1 = 1
mySum n = n + mySum (n - 1)

-- 3. Write a function that multiplies two integral numbers
-- using recursive summation. The type should be
-- (Integral a) => a -> a -> a.

intMult :: (Integral a) => a -> a -> a

-- with pattern matching
intMult _ 0 = 0
intMult 0 _ = 0
intMult a b = a + intMult a (b - 1)

-- with a guard
-- intMult a b
--   | a == 0 || b == 0 = 0
--   | otherwise        = a + intMult a (b - 1)


mc91 :: (Integral a) => a -> a
mc91 n 
  | n > 100   = n - 10
  | otherwise = mc91(mc91(n + 11))
