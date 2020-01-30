module FearfulSymmetry where

trimSpace :: String -> String
trimSpace "" = ""
trimSpace s = if (s !! 0 == ' ') then tail s else s

-- splits into words at spaces
-- use takeWhile and dropWhile
myWords :: String -> [String]
myWords s
  | s == firstWord = [s] 
  | otherwise      = firstWord : myWords lastWords
    where firstWord = takeWhile (/=' ') s
          lastWords = trimSpace $ dropWhile (/=' ') s

