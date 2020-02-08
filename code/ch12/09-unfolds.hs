module Unfold where

-- 1.

myIterate :: (a -> a) -> a -> [a]
myIterate f x = x : myIterate f (f x) 

-- 2.

myUnfoldr :: (b -> Maybe (a, b))
          -> b
          -> [a]
myUnfoldr f b = case f b of { Nothing -> []; (Just (x, y)) -> x : myUnfoldr f y }

