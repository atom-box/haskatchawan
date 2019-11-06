main = do
       putStrLn "enter value for x: "
       input1 <- getLine
       let x = (read input1 :: Int)
       print (x)