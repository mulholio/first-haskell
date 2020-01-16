module WordNumber where

digitToWord :: Integer -> String
digitToWord n
  | n == 0    = "zero"
  | n == 1    = "one"
  | n == 2    = "two"
  | n == 3    = "three"
  | n == 4    = "four"
  | n == 5    = "five"
  | n == 6    = "six"
  | n == 7    = "seven"
  | n == 8    = "eight"
  | n == 9    = "nine"
  | otherwise = "FUCK" -- TODO think of better solution here

-- Returns the digit representing the number of units in a
-- given column of a base-10 Integer
-- e.g. unitsInPosition 21 0 = 1
--      unitsInPosition 31 1 = 3
--      unitsInPosition 521 3 = 5
unitsAt :: Integer -> Integer -> Integer
unitsAt pos n = rightStripped `mod` 10
  where rightStripped = n `div` (10 ^ pos) -- remove columns to right

-- e.g. 123 -> [1, 2, 3]
digits :: Integer -> [Integer]
digits 0 = [0] -- to avoid the fact we use count === 0 below
digits n = reverse (go n 0)
  where go count pos
          | count == 0 = []
          | otherwise 
            = unitsAtPos : go (count - unitsAtPos * (10^) pos) ((+1) pos)
              where unitsAtPos = unitsAt pos count

wordNumber :: Integer -> String
wordNumber n = go wordList 
  where wordList = map digitToWord (digits n)
        go list
          | length list == 1 = head list 
          | otherwise        = (head list) ++ "-" ++ go (tail list)
