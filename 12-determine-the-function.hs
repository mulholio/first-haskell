module DetermineTheFunction where

f :: (x -> y)
  -> (y -> z)
  -> c
  -> (a, x)
  -> (a, z)
f xToY yToZ _ (a, x) = (a, (yToZ (xToY x)))

i :: a -> a
i x = x 

c :: a -> b -> a
c x _ = x

c' :: a -> b -> a
c' x _ = x

r :: [a] -> [a]
r x = x

co :: (b -> c) -> (a -> b) -> (a -> c)
co bToC aToB a = bToC (aToB a) 


a :: (a -> c) -> a -> a
a aToC a = a 

a' :: (a -> b) -> a -> b
a' aToB a = aToB a 
