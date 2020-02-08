module MaybeLib where

-- 1.

isJust :: Maybe a -> Bool
isJust x = case x of { (Just _) -> True; Nothing -> False }

isNothing :: Maybe a -> Bool
isNothing = not . isJust

-- 2.

mayybe :: b -> (a -> b) -> Maybe a -> b 
mayybe fallback aToB mA =
  case mA of
    (Just a) -> aToB a
    Nothing  -> fallback

-- 3. 

-- Gets result from maybe with a fallback
-- fromMaybe 0 Nothing          = 0
-- fromMaybe 0 (Just 1)         = 1
fromMaybe :: a -> Maybe a -> a
fromMaybe fallback m = mayybe fallback id m


-- 4.

-- listToMaybe [1, 2, 3]      = Just 1
-- listToMaybe []             = Nothing
listToMaybe :: [a] -> Maybe a
listToMaybe [] = Nothing
listToMaybe (x:xs) = Just x

-- maybeToList (Just 1)           = [1]
-- maybeToList Nothing            = []
maybeToList :: Maybe a -> [a]
maybeToList m =
  case m of
    (Just x) -> x : []
    Nothing  -> []

-- catMaybes [Just 1, Nothing, Just 2]        = [1, 2]
catMaybes :: [Maybe a] -> [a]
catMaybes [] = []
catMaybes (m:ms) =
  case m of
    Nothing  -> rest
    (Just x) -> x : rest
  where rest = catMaybes ms


-- cheat version using Eq
flipMaybe' :: Eq a => [Maybe a] -> Maybe [a]
flipMaybe' maybes
  | elem Nothing maybes = Nothing
  | otherwise           = Just (catMaybes maybes)

-- Done !
flipMaybe :: [Maybe a] -> Maybe [a]
flipMaybe maybes = if containsNothing maybes
                      then Nothing
                      else Just (catMaybes maybes)
  where containsNothing []     = False
        containsNothing (m:ms) = case m of
                                   Nothing -> True
                                   (Just _) -> containsNothing ms





