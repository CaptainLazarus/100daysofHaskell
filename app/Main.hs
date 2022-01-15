module Main where

import Lib

-- The dot operator 
f :: Int -> Int
f x = x*x

g :: Int -> Int
g x = 2+x

final :: Int -> Int
final = f.g

-- The map operator requires a function defined beforehand, and it's signature is (a->b) -> [a] -> [b]
-- Basically, it requires a function and a list to execute on.
square :: Int -> Int
square x = x*x

-- filter operator
filterTest xs = (filter (>3) xs)

-- $ operator
-- timesTwo xs = map (\x -> 2*x) (filter (\x -> x>3) xs)
timesTwo xs = map (\x -> 2*x) $ filter (\x -> x>3) xs
-- timesTwo xs = map (2*) $ filter (>1) xs

main :: IO ()
main = do
    let xs = [1,2,3,4,5]
    print (filterTest xs)