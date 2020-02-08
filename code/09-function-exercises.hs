module Exercises where

isPalindrome :: String -> Bool
isPalindrome x = reverse x == x

myAbs :: Integer -> Integer
myAbs n =
  if n > 0
     then n
  else (-n)
