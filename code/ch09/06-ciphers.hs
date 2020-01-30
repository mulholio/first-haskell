module Ciphers where

import Data.Char

-- p. 335

shift :: (Integral a, Enum b) => a -> b -> b
shift 0 x      = x
shift amount x = shift (amount - 1) (succ x)

cipherOne :: String -> String
cipherOne = map succ

-- generic cipher which shifts by any amount
cipher :: (Integral a) => a -> String -> String
cipher amount = map (shift amount)

unCipher :: (Integral a) => a -> String -> String
unCipher amount = map (shift (-amount))
