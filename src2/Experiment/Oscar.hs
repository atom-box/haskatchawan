{-
I WROTE THIS CODE.
-}

module Experiment.Oscar  
( fibonacci
) where


fibonacci 0 = 1
fibonacci 1 = 1
fibonacci n = fibonacci (n -1) + fibonacci (n-2)
