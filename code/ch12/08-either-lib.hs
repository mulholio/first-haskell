module EitherLib where

-- p. 475

-- 1.

lefts' :: [Either a b] -> [a]
lefts' = foldr (\a b -> case a of { (Left x) -> x : b; _ -> b }) []

-- 2.

rights' :: [Either a b] -> [b]
rights' = foldr (\a b -> case a of { (Right x) -> x : b; _ -> b }) []

-- 3.

partitionEithers' :: [Either a b] -> ([a], [b])
partitionEithers' es = (lefts' es, rights' es)

-- 4.

eitherMaybe' :: (b -> c)
             -> Either a b
             -> Maybe c
eitherMaybe' bToC e = case e of { (Left _) -> Nothing ; (Right x) -> Just (bToC x) };

-- 5.

either' :: (a -> c)
        -> (b -> c)
        -> Either a b
        -> c
either' aToC bToC e = case e of
                        (Left a) -> aToC a
                        (Right b) -> bToC b

-- 6.

eitherMaybe'' :: (b -> c)
              -> Either a b
              -> Maybe c
eitherMaybe'' bToC = either' (\_ -> Nothing) (Just . bToC)
