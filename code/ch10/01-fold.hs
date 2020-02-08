module Folds where

foldr (^) 2 [1..3] -- 1
1 ^ (foldr (^) 2 [2, 3])
1 ^ (2 ^ (foldr (^) 2 [3])
1 ^ (2 ^ (3 ^ foldr (^) 2 [])
1 ^ (2 ^ (3 ^ 2)

-- Not sure I get this
foldl (^) 2 [1..3] -- 64
(foldl (^) 2 [2, 3]) ^ 1
((foldl (^) 2 [3]) ^ 2) ^ 1
(((foldl (^) 2 []) ^ 3) ^ 2) ^ 1
(((2) ^ 3) ^ 2) ^ 1

foldr (flip (*)) 1 [1..3]
foldr (*) 1 [1, 2, 3]
1 * (foldr (*) 1 [2, 3])
1 * (2 * foldr (*) 1 [3])
1 * (2 * (3 * foldr (*) 1 [])
1 * (2 * (3 * 1)
6

foldr and True [False, True]
fold (&&) Tr
