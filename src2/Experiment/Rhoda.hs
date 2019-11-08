module Experiment.Rhoda 
(sinister 
) where




{-
Given a string of even length, return the first half. So the string "WooHoo" yields "Woo".
-}
sinister s = do
  let width = div (length s) 2
  take width s


