{-
The sum of the squares of the first ten natural numbers is,
    n
The square of the sum of the first ten natural numbers is,
    m
Hence the difference between the sum of the 
squares of the first ten natural numbers and the square of the sum is
    m - n = k
Find the difference between the sum of the squares of 
the first one hundred natural numbers and the square of the sum.
-}



sumOfSquares = sum [ n * n | n <- [1..100]] :: Integer
squareOfSum = sum [1..100] ^ 2 :: Integer


main ::IO()
main = print (squareOfSum - sumOfSquares)