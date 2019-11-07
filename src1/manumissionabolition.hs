{- solve pythagorean theorem -}

main = do
       putStrLn "Enter maximum hypotenuse length: "
       hyp <- getLine
       let z = (read hyp :: Int)
       let triangles = [[x, y, z] | x <- [1..100], y <-[1..100], z <- [1..z], z^2 == y^2 + x^2 ]
       print (triangles)

