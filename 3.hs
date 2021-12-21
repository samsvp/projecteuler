{-
The prime factors of 13195 are 5, 7, 13 and 29.
What is the largest prime factor of the number 600851475143 ?
-}

isqrt :: Int -> Int
isqrt = floor . sqrt . fromIntegral

isPrime :: Int -> Bool
isPrime 2 = True
isPrime n = sum([1 | x <- 2 : [3,5..(isqrt n)], mod n x == 0]) == 0

primeFactors n = [x | x <- 2 : [3,5..isqrt n], isPrime x, mod n x == 0]


fastPrimeFactors n c limit
    | c > limit = []

fastPrimeFactors n 2 limit 
    | isPrime(div n 2) = [2, div n 2] ++ fastPrimeFactors n 3 (div n 2)
    | even n = 2 : fastPrimeFactors n 3 limit
fastPrimeFactors n 2 limit = fastPrimeFactors n 3 limit
fastPrimeFactors n c limit
    | mod n c /= 0 = fastPrimeFactors n (c+2) limit
    | isPrime c && isPrime(div n c) = [c, div n c] ++ fastPrimeFactors n (c+2) (div n c)
    | isPrime c = c : fastPrimeFactors n (c+2) limit
    | isPrime(div n c) = div n c : fastPrimeFactors n (c+2) (div n c)

fastPrimeFactors n c limit = fastPrimeFactors n (c+2) limit


main :: IO ()
main = print (fastPrimeFactors 600851475143 2 (isqrt 600851475143))