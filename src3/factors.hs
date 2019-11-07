main = do  
    putStrLn "For which number do you want factors?"  
    entered <- getLine  
    let x = (read entered :: Int)
    let factorings = [[a, b]| a <- [1..x], b <- [1..x], x == a * b]
    print (factorings)