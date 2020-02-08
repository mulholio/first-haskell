module FoldRewrite where

-- p. 376


myAnd :: [Bool] -> Bool
-- myAnd [] = True
-- myAnd (x:xs) =
--   if x == False
--    then False
--    else myAnd xs

myAnd = foldr (\a b -> (a && b)) True

myOr :: [Bool] -> Bool
myOr = foldr (||) False

myAny :: (a -> Bool) -> [a] -> Bool
myAny f = foldr ((||) . f) False   

myElemF :: Eq a => a -> [a] -> Bool
myElemF a = foldr ((||) . (a==)) False

myElemA :: Eq a => a -> [a] -> Bool
myElemA a = any (a==)

myReverse :: [a] -> [a]
myReverse = foldl (flip (:)) []

myMap :: (a -> b) -> [a] -> [b]
myMap f = foldr (\a b -> (f a) : b) []
