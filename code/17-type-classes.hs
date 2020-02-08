module TypeClasses where

-- 1. No variables

-- class must take a variable; the whole point of classes is that they are abstract
-- here, a refers to the datatype
class Greets a where
  greet :: a -> String

data Person Integer = Person Integer

instance Greets Person where
  greet _ = "Hi"

-- 2. One variables
