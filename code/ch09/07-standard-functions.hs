module StandardFuncs where

myOr :: [Bool] -> Bool
myOr [] = False
myOr (x:xs) =
  if x == True
  then True
  else myOr xs
  
myAny :: (a -> Bool) -> [a] -> Bool
myAny _ [] = False
myAny f (x:xs) =
  if (f x) == True
  then True
  else myAny f xs

