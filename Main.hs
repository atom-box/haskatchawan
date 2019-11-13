{-
  Calls three modules
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
  let musician = "PET SHOP BOYS"
  print musician
  print $ sinister $ musician
  putStrLn "------Fizzbuzz for 33, 55, 60, 19:"
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
  putStrLn "------Count occurances of 'Hi':"
  let friend = "While shiny hindsighted ships plough the Ohio."
  print $ friend
  print $ countHi $ friend
  putStrLn "------Make everything plural:"
  let tennouns = ["kitchen","Detroit","A","mother","net","party","Baltimore","O","sale"]
  print tennouns
  print $ map plurify tennouns
  putStrLn "------Update the honorifics:"
  let people = ["Mr. Charlie-Tuna",  "Mrs.",  "Kennedy",  "Miss",  "Mary",  "Poppins",  "Mr. Oocyte"]
  print people
  print $ map modernize people
  putStrLn "------UN-abbreviate Blvd:"
  let place = "Farmers Blvd, Queens NY (second Blvd here)"
  print place
  print $ roadify place
  putStrLn "------Pad out numbers w/ less than 10-digits:"
  let phones = [8522535, 6082289493, 13, 4653958]
  print phones
  print $ map fixID phones
  putStrLn "------Make a double by splitting a list at a position:"
  print atHome
  print $ cleave atHome 8



