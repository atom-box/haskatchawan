{-
	I WROTE THIS
-}

import Experiment.Felix
import Experiment.Oscar


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



{-
http://learnyouahaskell.com/modules
-}