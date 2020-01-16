module DataChar where

import Data.Char

upperOnly :: String -> String
upperOnly s = [c | c <- s, isUpper c]

capitalizeFst :: String -> String
capitalizeFst (c:cs) = toUpper c : cs

capitalizeAll :: String -> String
capitalizeAll [] = []
capitalizeAll (c:cs) = toUpper c : capitalizeAll cs

capAndReturnFst :: String -> Char
capAndReturnFst = toUpper . head
