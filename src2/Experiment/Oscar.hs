{-
I WROTE THIS CODE.
-}

module Experiment.Oscar  
( fibonacci
) where

fibonacci n = if n < 2
  then 1
  else n + fibonacci (n -1)