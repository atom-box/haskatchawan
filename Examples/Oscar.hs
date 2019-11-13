{-
All recursive functions
-}

module Examples.Oscar  
( fibonacci
, bunnyEars 
, x2y
, flipper
, countHi
, plurify
, modernize
, roadify
, addPadding
, cleave
, expandYear
, expandFileTag
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

-- Count occurances of 'H', 'i'
countHi [] = 0
countHi (x:[]) = 0
countHi (x:xs) | x == 'h' && (head xs) == 'i' = 1 + countHi xs
               | otherwise                    = 0 + countHi xs

-- Add S's to everything
plurify [] = []
plurify (x:[]) = [x]++ "'s"
plurify (x:xs) = (x:xs) ++ "s"

-- Edit women's honorifics for words as an array
modernize str | str == "Mrs." || str == "Miss" = "Ms."
              | otherwise                      = str

-- In a string, expand first occurance of Blvd Ln Rd St,,,,,,,
roadify [] = []
roadify s | (take 4 s) == "Blvd"  = "Boulevard" ++ (drop 4 s)
          | otherwise             = [(head s)] ++ (roadify $ tail s)




-- In a list of alphanumeric IDs, pad out the leading digits so all have 6
addPadding rawStr
      | ((length rawStr) > finalSize)  =  "Input length exceeds final length"
      | ((length rawStr) == finalSize)  = rawStr
      | ((length rawStr) < finalSize) =  addPadding $ "0" ++ rawStr
      | otherwise =  "AddPadding ended with no match."
    where finalSize = 6

-- Convert a 2 digit year to 4 digit year
-- SYNTAX FOR CONVERTING STRING TO INTEGER in Haskell!
expandYear d2 | d2Int <= currYr = "20" ++ d2
              | d2Int >  currYr = "19" ++ d2
  where currYr = 19
        d2Int = (read d2 :: Int)

-- long pattern match more readable than TAKE/DROP
expandFileTag (a:b:c:d:e:xs) = left ++ middle ++ right 
  where middle = [c] ++ [d] ++ [e]
        left = expandYear ([a] ++ [b])
        right = addPadding xs

-- For a given list and position, split, return a pair of lists, split at the LOC position
cleave list loc = (leftList , rightList)
  where leftList = take loc list
        rightList = drop loc list

-- Expand the tags.
{-
Hi Michael, 


I was reading about Let vs Where vs <-  in bindings this morning. It inspired me to rewrite better answers.  Functional code should look nice so other people can read it!  
Here are my [cleaner implementations]() of the three Haskell questions you asked on Tuesday:
-}