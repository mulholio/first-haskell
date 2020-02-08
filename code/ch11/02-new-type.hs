{-# LANGUAGE FlexibleInstances #-}

module NewType where

class TooMany a where
  tooMany :: a -> Bool

instance TooMany Int where
  tooMany n = n > 24

newtype Goats =
  Goats Int deriving (Eq, Show)

instance TooMany Goats where
  tooMany (Goats n) = n > 42

newtype Cows =
  Cows Int deriving (Eq, Show)

instance TooMany (Int, String) where
  tooMany (n, _) = n > 42

instance TooMany (Int, Int) where
  tooMany (n, m) = (n + m) > 42

instance (Num a, TooMany a) => (a, a) where
  tooMany (x, y) = (tooMany x) && (tooMany y)

-- We could check using a type alias too but that would be less safe
-- type Goats = Int
