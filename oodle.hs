-- turn vowels into "oodle"

vowels = ['a', 'e', 'i', 'o', 'u']

test [] = []

test (x:xs) = if x `elem` vowels then "oodle" ++ test xs else  x : test xs

safe_head [] = Nothing
safe_head (x:_) = Just x

head_or_zero list =
    let
        h = safe_head list
    in
        case h of Just x -> x