{-
By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, 
we can see that the 6th prime is 13.

What is the 10 001st prime number?
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

primes = [n | n <- [2..], isPrime n]

main :: IO ()
main = print (primes !! 10000)