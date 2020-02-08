module NaturalNumbers where

data Nat =
    Zero
  | Succ Nat
  deriving (Eq, Show)

natToInteger :: Nat -> Integer
natToInteger n = case n of
  Zero     -> 0
  (Succ m) -> (natToInteger m) + 1

integerToNat :: Integer -> Maybe Nat
integerToNat n 
  | n < 0     = Nothing
  | n == 0    = Just Zero
  | otherwise =
      case integerToNat (n - 1) of
        Nothing -> Nothing
        Just n  -> Just (Succ n)
