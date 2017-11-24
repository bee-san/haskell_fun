-- remove whitespace and vowels

vowels = ['a', 'e', 'i', 'o', 'u']

disemvower [] = []
disemvower (x:xs) = if x `elem` vowels then disemvower xs else x : disemvower (xs)
