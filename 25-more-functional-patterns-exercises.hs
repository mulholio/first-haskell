module FunctionalPatterns where

tensDigit :: Integral a => a -> a
-- tensDigit x = d
--   where xLast = x `div` 10
--         d     = xLast `mod` 10 -- loop round on 100
-- tensDigit n = d
--   where (xLast, _) = n `divMod` 10
--         (_, d)     = xLast `divMod` 10

hunsDigit :: Integral a => a -> a
-- hunsDigit n = dig
--   where xLast = n `div` 100
--         dig   = xLast `mod` 100

xDigit :: Integral a => a -> a -> a
xDigit x n = dig
  where xLast = div n x
        dig   = mod xLast x

hunsDigit = xDigit 100
tensDigit = xDigit 10


-- 2. ----------------------------------------------


foldBool :: a -> a -> Bool -> a
foldBool x _ False = x
foldBool _ y True = y
