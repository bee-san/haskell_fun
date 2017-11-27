middle :: [a] -> Maybe a
middle [] = Nothing
middle (x:xs) = Just (x:xs)

middle (x:xs) = if even l then xs !! (l `div` 2) -1 else xs !! (l `div` 2)
    where l = length (x:xs)