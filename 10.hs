{-
The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
Find the sum of all the primes below two million.
-}


isqrt :: Int -> Int
isqrt = floor . sqrt . fromIntegral

isPrime :: Int -> Bool
isPrime 2 = True
isPrime n = isPrimeLoop n (isqrt n)

isPrimeLoop :: Integral t => t -> t -> Bool
isPrimeLoop n 1 = True
isPrimeLoop n m | mod n m /= 0 = isPrimeLoop n (m - 1)
isPrimeLoop n m = False

primes = 2 : [n | n <- [3,5..], isPrime n]
s =  sum (takeWhile (< 2000000) primes)

main :: IO ()
main = print s