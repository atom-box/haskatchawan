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
Implement Fizzbuzz.  This is my lame answer
b/c I can't figure out the pattern match.
-}
fizzer n = do
  if (mod n 5 == 0 && mod n 3 == 0)
    then "BizzFuzz"
  else if (mod n 5 == 0)
    then "Buzz"
  else if (mod n 3 == 0)
    then "Fizz"
  else
    show n


-- Given a string, return a version without the first and last char, so "Hello" yields "ell". The string length will be at least 2.
withoutEnd s = do 
  init (tail s)


-- Given a string, return a "rotated left 2" version where the first 2 chars are moved to the end. The string length will be at least 2.

left2 s = do
  let a = take 2 s
  let b = drop 2 s
  b ++ a


{-
Implment SLICE from JS manually
-}