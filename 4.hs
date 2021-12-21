{-
A palindromic number reads the same both ways. 
The largest palindrome made from the product of two 
2-digit numbers is 9009 = 91 × 99.

Find the largest palindrome made from the product of 
two 3-digit numbers.
-}

palindrome :: Int -> Bool
palindrome n = show n == reverse (show n)


maxPal = [n * m | n <- [500..999], m <- [n..999], palindrome (n * m)]

main ::IO()
main = print (maximum maxPal)