module StringFns where

nthChar :: Int -> String -> Char
nthChar n s = head (drop (n - 1) s)

thirdChar :: String -> Char
thirdChar = nthChar 3

-- rvs :: String -> String
-- rvs s = concat (rvs (drop (findChar ' ' s) s))
