module MaybeHeade where

-- p. 300

maybeHead       :: [a] -> Maybe a
maybeHead []    = Nothing
maybeHead (x:_) = Just x
