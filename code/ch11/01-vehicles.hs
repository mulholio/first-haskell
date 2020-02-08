module Vehicles where

data Price = Price Integer deriving (Eq, Show)

data Manufacturer =
    Mini
  | Mazda
  | Tata
    deriving (Eq, Show)

data Airline =
    PapuAir
  | CatapultsRUs
  | TakeYourChancesUtd
    deriving (Eq, Show)

data Vehicle = Car Manufacturer Price
             | Plane Airline
             deriving (Eq, Show)

myCar = Car Mini (Price 14000)
