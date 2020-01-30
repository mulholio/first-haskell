-- Exercises from p. 224 onwards

module GrabBag where

-- 1. Are these all equivalent?
-- (yes)

mTh0 :: Num a => a -> a -> a -> a
mTh0 x y z = x * y * z

mTh1 :: Num a => a -> a -> a -> a
mTh1 x y = \z -> x * y * z

mTh2 :: Num a => a -> a -> a -> a
mTh2 x y = \z -> x * y * z

mTh3 :: Num a => a -> a -> a -> a
mTh3 x = \y -> \z -> x * y * z

mTh4 :: Num a => a -> a -> a -> a
mTh4 = \x -> \y -> \z -> x * y * z

-- 3. Writing Lamdas

-- 3. a)

addOneIfOdd :: Int -> Int
addOneIfOdd n = case odd n of
  True  -> f n
  False -> n
  where f = \n -> n + 1

-- 3. b)

addFive :: (Num a, Ord a) => a -> a -> a
addFive = \x -> \y -> (if x > y then y else x) + 5

-- 3. c)

-- mFlip f = \x -> \y -> f y x
mFlip f x y = f y x
