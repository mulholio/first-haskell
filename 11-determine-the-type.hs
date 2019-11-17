module DetermineTheType where

h :: [a] -> a
h (x:_) = x

f :: Num a => [a] -> a
f (x:y) = x + head y

g :: Ord a => a -> a -> Bool
g x y =
  if (x > y) then True else False
