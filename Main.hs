{-
	I WROTE THIS
-}

import Experiment.Felix
import Experiment.Oscar
import Experiment.Rhoda


main = do
  putStrLn "Recursive Fibonacci: "
  print(fibonacci 2)
  print(fibonacci 3)
  print(fibonacci 4)
  print(fibonacci 5)
  print(fibonacci 6)
  putStrLn "Recursive BunnyEars: "
  print(bunnyEars 6)
  print(bunnyEars 33)
  putStrLn "Recursive char replacement of x with y: "
  let slogan = "Excellency, Your Xerxes!"
  putStrLn slogan  
  print(x2y slogan)
  print(length nouns)
  print(sinister "PET SHOP BOYS")
  print(fizzer 33)
  print(fizzer 55)
  print(fizzer 60)
  print(fizzer 19)
  print(withoutEnd("Hello")) -- "ell"
  print(withoutEnd("java")) -- "av"
  print(withoutEnd("coding")) -- "odin"
  print(left2("Hello")) -- "lloHe"
  print(left2("java")) -- "vaja"
  print(left2("Hi")) -- "Hi"




{-
http://learnyouahaskell.com/modules
https://codingbat.com
-}