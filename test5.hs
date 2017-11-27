module SquareDigit where

import Data.Char


squareDigit :: Int -> Int

squareDigit number = foldl (\ acc x -> acc + (x*x)) 0 (digs number)


digs :: Integral x => x -> [x]

digs 0 = []

digs x = x `mod` 10 : digs (x `div` 10)
