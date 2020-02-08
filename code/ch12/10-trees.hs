module BinaryTree where

data BinaryTree a =
    Leaf
  | Node (BinaryTree a) a (BinaryTree a)
  deriving (Eq, Ord, Show)

-- 1.

unfold :: (a -> Maybe (a, b, a))
       -> a
       -> BinaryTree b
unfold f a =
  case f a of
    Nothing              -> Leaf
    Just(left, x, right) -> Node (unfold f left) x (unfold f right)

-- 2.

treeBuild :: Integer -> BinaryTree Integer
treeBuild n = unfold f n
  where f m
          | m == 0 = Nothing
          | otherwise = Just ((m-1), m, (m-1))
