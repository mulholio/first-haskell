module PatternMatching where

newtype Username =
  Username String

newtype AccountNumber =
  AccountNumber Integer

data User =
  UnregisteredUser
  | RegisteredUser Username AccountNumber

printUser :: User -> IO ()
-- First pattern match case
printUser UnregisteredUser =
  putStrLn "UnregisteredUser"

-- Second pattern match case
printUser (RegisteredUser
           (Username name)
           (AccountNumber accountNo)) =
  putStrLn $ name ++ " " ++ show accountNo


username = Username "Reginald"
accountNo = AccountNumber 1234
reg = RegisteredUser username accountNo

-- Exercises =======================================

-- 2.
f :: (a, b, c)
  -> (d, e, f)
  -> ((a, d), (c, f))
f (a, b, c) (d, e, f) = ((a, d), (c, f))
