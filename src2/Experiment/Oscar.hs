{-
I WROTE THIS CODE.
-}

module Experiment.Oscar  
( fibonacci
, bunnyEars 
, x2y
) where

{-
Recursive Fibonacci.
-}
fibonacci 0 = 1
fibonacci 1 = 1
fibonacci n = fibonacci (n -1) + fibonacci (n-2)


{-
Recursive bunny ears.
We have a number of bunnies and each bunny has two big floppy ears. We want 
to compute the total number of ears across all the bunnies recursively 
(without loops or multiplication).
-}
bunnyEars 0 = 0
bunnyEars 1 = 2
bunnyEars b = 2 + bunnyEars (b - 1)

{-
Given a string, compute recursively (no loops) a new string where all the lowercase 'x' chars have been changed to 'y' chars.
-}
x2y str = [if x == 'x' then 'y' else x | x <- str ]