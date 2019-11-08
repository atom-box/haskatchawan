module Experiment.Rhoda 
(sinister 
, fizzer
, withoutEnd
, left2
) where




{-
Given a string of even length, return the first half. So the string "WooHoo" yields "Woo".
-}
sinister s = do
  let width = div (length s) 2
  take width s

{-
Implement Fizzbuzz.  NOTE:
  PIPES!
  TYPE CONVERSION TO STRING IN LAST CASE
  USE OF "otherwise"
-}

fizzer n
  | (mod n 5 == 0 && mod n 3 == 0) = "FizzBuzz"
  | mod n 5 == 0 = "Buzz"
  | mod n 3 == 0 = "Fizz"
  | otherwise  = show n


-- Given a string, return a version without the first and last char, so "Hello" yields "ell". The string length will be at least 2.
withoutEnd s = do 
  init (tail s)


-- Given a string, return a "rotated left 2" version where the first 2 chars are moved to the end. The string length will be at least 2.

left2 s = do
  let a = take 2 s
  let b = drop 2 s
  b ++ a

-- Return the number of times that the string "hi" appears anywhere in the given string.



{-
Implment SLICE from JS manually
-}



