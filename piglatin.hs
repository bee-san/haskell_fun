-- pig latin 

-- take the first leter of the word and put it on the end
-- then add "ay" to the end of the word
-- if users only input numbers then make a translation error
import Data.Char (isDigit)


pig_list list = if check_num list /= True  then pig_latin list  else error"String ONLY CONTAISN NUM"
-- pig latin 

-- take the first leter of the word and put it on the end
-- then add "ay" to the end of the word
-- if users only input numbers then make a translation error

-- all checks to make sure all elements of a list satisfy the predicate (function that returns bool)
check_num list = all isDigit list

pig_latin list = first_to_back list  ++ "ay"

first_to_back list  = tail list ++ [head list]
