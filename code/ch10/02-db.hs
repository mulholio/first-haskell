module Database where

import Data.Time

-- p. 367

data DatabaseItem = DbString String
                  | DbNumber Integer
                  | DbDate   UTCTime
                  deriving (Eq, Ord, Show)

theDatabase :: [DatabaseItem]
theDatabase =
  [ DbDate (UTCTime
            (fromGregorian 1911 5 11)
            (secondsToDiffTime 3413))
  , DbNumber 9001
  , DbNumber 2
  , DbString "Hello, world!"
  , DbDate (UTCTime
            (fromGregorian 1921 5 1)
            (secondsToDiffTime 3413))
  ]

filterDbDate :: [DatabaseItem] -> [UTCTime]
filterDbDate = foldr (\a b -> case a of { DbDate date -> date : b; _ -> b}) []

filterDbNumber :: [DatabaseItem] -> [Integer]
filterDbNumber = foldr (\a b -> case a of { DbNumber n -> n : b; _ -> b}) []

dateIdentity = UTCTime (fromGregorian 0000 0 00) (secondsToDiffTime 0)

mostRecent :: [DatabaseItem] -> UTCTime
mostRecent = foldr (\a b -> case a of { DbDate d -> if d > b then d else b; _ -> b }) dateIdentity

-- sums all DbNumber values
sumDb :: [DatabaseItem] -> Integer
sumDb = foldr (\a b -> case a of { DbNumber n -> n + b; _ -> b}) 0

-- gets the average of the DbNumber values
avgDb :: [DatabaseItem] -> Double
avgDb items = total / count
  where totalAndCount = foldr (\a b -> case a of { DbNumber n -> ((fromIntegral n) + fst b, (snd b) + 1); _ -> b }) (0, 0) items
        total = fst totalAndCount
        count = snd totalAndCount

