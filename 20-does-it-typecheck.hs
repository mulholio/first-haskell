module DoesItTypeCheck where

-- 1

data Person = Person Bool deriving (Show)

printPerson :: Person -> IO ()
printPerson person= putStrLn (show person)

-- 2

data Mood = Blah | Woot deriving Show

instance Eq Mood where
  (==) Blah Blah = True
  (==) Woot Woot = True
  (==) _ _ = False

settleDown x = if x == Woot
                  then Blah
                  else x

-- 4

type Subject = String
type Verb = String
type Object = String

data Sentence =
  Sentence Subject Verb Object
  deriving (Eq, Show)

s1 = Sentence "dogs" "woof"
s2 = Sentence "James" "loves" "cats"
