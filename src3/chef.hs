main = do  
    putStrLn "Test what integer for prime:"  
    entered <- getLine  
    let x = (read entered :: Int)
    let factorings = [[a, b]| a <- [1..x], b <- [1..x], x == a * b]
    print (factorings)