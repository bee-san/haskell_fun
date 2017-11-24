uniq [] = []
uniq (x:xs) = x : uniq (filter (/=x) xs)

count x list = length (filter(==x) list)

totals votes =
	let
		candidates = uniq votes
		f = (\ c -> (count c votes, c))

	in

		map f candidates

winner votes = (snd . maximum . totals) votes

data ListListInt = [[Int]]

data ThreeDObject = Sphere Radius :: Float | Cube height::Float width::Float depth::Float

