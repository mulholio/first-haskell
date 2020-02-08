module Review where

stops  = "pdtdkg"
vowels = "aeiou"

-- makes 3-tuples of all possible vowel-stop combos
allCombosChars :: [(Char, Char, Char)]
allCombosChars = [(x, y, z) | x <- all, y <- all, z <- all, elem x stops, elem y vowels, elem z stops]
  where all = stops ++ vowels

-- only the combinations that begin with a p.
allCombosCharsP = filter startWithAP allCombosChars
  where startWithAP ('p',_,_) = True
        startWithAP _         = False

-- Now set up lists of nouns and verbs (instead of stops and vowels)
nouns = ["cat", "dog", "tree", "stick"]
verbs = ["chases", "eats", "finds"]
-- and modify the function to make tuples representing possible noun-verb-noun sentences
allCombosWords :: [(String, String, String)]
allCombosWords = [(x, y, z) | x <- all, y <- all, z <- all, elem x nouns, elem y verbs, elem z nouns]
  where all = nouns ++ verbs

