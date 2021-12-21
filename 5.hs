{-
2520 is the smallest number that can be divided by 
each of the numbers from 1 to 10 without any remainder.

What is the smallest positive number that is evenly 
divisible by all of the numbers from 1 to 20?
-}



main ::IO() -- 2 3 4 5 6 7 8 9 10 11 12 14 13 15 16 17 18 19
main = print (2 * 2 * 2 * 2 * 3 * 3 * 5 * 7 * 11 * 13 * 17 * 19)