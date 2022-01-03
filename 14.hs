

{-# OPTIONS_GHC -Wno-incomplete-patterns #-}
import Data.Array
import Data.List
import Data.Ord
{-
The following iterative sequence is defined for the set of positive integers:

n → n/2 (n is even)
n → 3n + 1 (n is odd)

Using the rule above and starting with 13, we generate the following sequence:
13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1

It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.

Which starting number, under one million, produces the longest chain?

NOTE: Once the chain starts the terms are allowed to go above one million.
-}


collatzLen n = cache
    where cache = listArray (1,n) $ 0 : map collatzLen' [2..n]
          collatzLen' x = 1 + if y<=n then cache ! y else collatzLen' y
                where y = if even x then div x 2 else 3 * x + 1



c = (map collatz [0..] !!)
    where collatz 0 = 1
          collatz 1 = 1
          collatz n
            | odd n = 1 + c (3 * n + 1)
            | even n = 1 + c (div n 2)



y = maximumBy (comparing snd) . assocs . collatzLen $ 1000000

main :: IO ()
main = print (y)