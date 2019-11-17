module DataClass where

data Trivial =
  Trivial'

instance Eq Trivial where
  Trivial' == Trivial' = True


data DayOfWeek =
  Mon | Tue | Wed | Thu | Fri | Sat | Sun
  -- Allow us to print this data type
  deriving Show

instance Eq DayOfWeek where
  (==) Mon Mon = True
  (==) Tue Tue = True
  (==) Wed Wed = True
  (==) Thu Thu = True
  (==) Fri Fri = True
  (==) Sat Sat = True
  (==) Sun Sun = True
  (==) _ _     = False

data Date =
  Date DayOfWeek Int



instance Eq Date where
       -- Date param one with labelled arguments
  (==) (Date weekday dayOfMonth)
       -- Date param two with labelled arguments
       (Date weekday' dayOfMonth') =
         -- comparison check:
         weekday == weekday'
         && dayOfMonth == dayOfMonth'
