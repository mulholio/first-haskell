module TypeInference1 where

-- The type is inferred as follows:
-- f :: Num a => a -> a -> a
f x y = x + y + 3
