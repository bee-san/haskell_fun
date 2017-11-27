echo :: IO ()
echo = do
    str <- getLine
    putStrLn str

doubleEcho :: IO ()
doubleEcho = do
    str <- getLine
    putStrLn str
    putStrLn str

plus_one :: IO ()
plus_one = do
    str <- getLine
    let n   = read str :: Int
        out = n + 1
    putStrLn (show out)

times_two :: IO ()
times_two = do
    str <- getLine
    let n = read str :: Int
        out = n * 2
    putStrLn(show out)

add :: IO ()
add = do
    num1 <- getLine
    num2 <- getLine
    let num3 = read num1 :: Int
    let num4 = read num2 :: Int
        out = num3 + num4
    putStrLn(show out)


io_reverse :: IO ()
io_reverse = do 
    print "give us a line "
    str <- getLine
    putStrLn (show (reverse str))

guess_42 :: IO ()
guess_42 = do
    print "guess a number"
    number <- getLine
    let num = read number :: Integer
    if num == 42 then 
        putStrLn "Correct!"
    else
        putStrLn "Wrong"

 