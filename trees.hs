-- messing around with trees

data Tree = Leaf | Branch Tree Tree deriving (Show)

size :: Tree -> Int
size (Leaf) = 1
size (Branch x y ) = 1 + size x + size y

data DTree a = DLeaf a | DBranch a (DTree a) (DTree a) deriving (Show)


tree_sum :: Num a => DTree a -> a
tree_sum (DLeaf x) = x
tree_sum (DBranch x l r) = x + tree_sum l + tree_sum r

