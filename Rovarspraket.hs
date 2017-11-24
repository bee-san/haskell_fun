-- robbers language
-- take an ordinary word and replace the consonants with the consonant dobuled with an "o" between them
-- vowels are left untouched

-- go through a list and if a consonant is found and if there is one after it then add an "o" in it

vowels = ['a', 'e', 'i', 'o', 'u']

check consonants  = if x `elem` vowels == True then False else True

test = map (\x -> if check then 

