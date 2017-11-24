-- FourThings :: a -> b -> c -> d -> FourThings a b c d
data FourThings a b c d = FourThings a b c d deriving (Show)

middle_two :: FourThings a b c d -> (b, c)
middle_two (FourThings a b c d)  = (b, c)


data ThreeSamesThings a = ThreeSameThings deriving (Show)

safe_tail [] = Nothing
safe_tail (x:xs) = Just xs

safe_tails list = map safe_tail list

tails list = let
	t = safe_tails list
	just_t = filter (/=Nothing) t
	in
		map (\ (Just x) -> x) just_t

second_head list = case [_:x:_] of list -> x
						otherwise -> error"List too small"

is_empty list = case if safe_tail == Nothing then True else False
