module Experiment.Rhoda 
(sinister 
, fizzer
) where




{-
Given a string of even length, return the first half. So the string "WooHoo" yields "Woo".
-}
sinister s = do
  let width = div (length s) 2
  take width s

{-
Print out all the numbers from 1 to 100. But for every number divisible by 3 print replace it with the word “Fizz,” for any number divisible by 5 replace it with the word “Buzz” and for a number divisible by both 3 and 5 replace it with the word “FizzBuzz.”
-}
fizzer n = if (mod n 5 == 0 && mod n 3 == 0)
  then "BizzFuzz"
  else show n



{-
Implment SLICE from JS manually
-}