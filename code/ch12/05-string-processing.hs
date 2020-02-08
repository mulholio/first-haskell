module StringProcessing where

import Data.Char

-- p. 472

notThe :: String -> Maybe String
notThe "the" = Nothing
notThe s = Just s

-- 1.

-- Takes a string
-- breaks it into words
-- replaces each "the" with "a"
replaceThe :: String -> String
replaceThe = tail . go . words
  where go [] = [] 
        go (w:ws) = " "
          ++ case notThe w of 
               Nothing  -> "a"
               (Just s) -> s
          ++ go ws

-- 2.

vowels = "aeiou"

type LetterGroup = String

isElemLetterGroup :: LetterGroup -> Char -> Bool
isElemLetterGroup letterGroup = ((flip elem) letterGroup) . toLower

isVowel :: Char -> Bool
isVowel = isElemLetterGroup vowels

consonants = filter (not . isVowel) ['a'..'z']

isConsonant :: Char -> Bool
isConsonant = isElemLetterGroup consonants

startsWithVowel :: String -> Bool
startsWithVowel = isVowel . head 

-- Breaks into words
-- Counts the number of 'the's which appear before a words which start with a vowel
countTheBeforeVowel :: String -> Integer
countTheBeforeVowel s = go (words s) 0
  where go (w1:w2:ws) count = case notThe w1 of
                                Just _  -> go ws count
                                Nothing -> go ws (if startsWithVowel w2
                                                     then count + 1
                                                     else count)
        go _ count = count

-- 3.

getElemsOfLetterGroup :: LetterGroup -> String -> String
getElemsOfLetterGroup _ "" = ""
getElemsOfLetterGroup letterGroup (c:cs)
  | isElemLetterGroup letterGroup c = c : elemsOfRest
  | otherwise                       = elemsOfRest
  where elemsOfRest = getElemsOfLetterGroup letterGroup cs

getVowels :: String -> String
getVowels = getElemsOfLetterGroup vowels

getConsonants :: String -> String
getConsonants = getElemsOfLetterGroup consonants

numVowels :: String -> Int
numVowels = length . getVowels

numConsonants :: String -> Int
numConsonants = length . getConsonants

-- counts the numbver of vowels and consonants
-- if #vowels > #consonants then return nothing

newtype Word' =
  Word' String
  deriving (Eq, Show)

mkWord :: String -> Maybe Word'
mkWord s = if isValidWord
              then (Just (Word' s))
              else Nothing
  where isValidWord = numVowels s < numConsonants s

