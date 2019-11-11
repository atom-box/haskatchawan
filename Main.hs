{-
	I WROTE THIS
-}

import Examples.Felix
import Examples.Oscar
import Examples.Rhoda


main = do
  putStrLn "------Recursive Fibonacci:"
  print(fibonacci 2)
  print(fibonacci 3)
  print(fibonacci 4)
  print(fibonacci 5)
  print(fibonacci 6)
  putStrLn "------Recursive BunnyEars: "
  print(bunnyEars 6)
  print(bunnyEars 33)
  putStrLn "------Recursive char replacement of x with y: "
  let slogan = "Mr. Xerxes, Your fxc-135 is 'fixed'!"
  putStrLn slogan  
  print(x2y slogan)
  print(length nouns)
  putStrLn "------Print lefthalf of any string:"
  print(sinister "PET SHOP BOYS")
  putStrLn "------Fizzbuzz:"
  print(fizzer 33)
  print(fizzer 55)
  print(fizzer 60)
  print(fizzer 19)
  putStrLn "------Remove word ends:"
  print(withoutEnd("Hello")) -- "ell"
  print(withoutEnd("java")) -- "av"
  print(withoutEnd("coding")) -- "odin"
  putStrLn "------Rotation cipher:"
  print(left2("Hello")) -- "lloHe"
  print(left2("java")) -- "vaja"
  print(left2("Hi")) -- "Hi"
  putStrLn "------Remove non-alpha:"
  print(slogan)
  print(purify slogan)
  putStrLn "------Reverse with Recursive:"
  let atHome = "Lambeau Field"
  print $ atHome
  print $ flipper $ atHome


  -- print(countHi("hiabc h i ho")) -- 1
  -- print(countHi("ABChi shishi")) -- 3
  -- print(countHi("ihihhhhhhhiiiiihia")) -- 3




{-
http://learnyouahaskell.com/modules
https://codingbat.com
-}