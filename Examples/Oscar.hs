{-
All recursive functions
-}

module Examples.Oscar  
( fibonacci
, bunnyEars 
, x2y
, flipper
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


{-
Detect the presence of "hi" at the start of a String
-}
lookForHi (x:y:xs) = if x == 'h' && y == 'i' then True else False



-- Recursively invert a list order
flipper [] = []
flipper (x:[]) = [x]  -- Notice! We return String not Char
flipper (x:xs) = [last xs] ++ flipper ([x] ++ init xs)







