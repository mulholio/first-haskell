module Scans where

-- infinite
fibsA = 1 : scanl (+) 1 fibsA
-- first 20
fibsB = take 20 $ 1 : scanl (+) 1 fibsB
-- < 100
fibsC = 1 : scanl (+) 1 fibsC
