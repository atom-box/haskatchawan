main = do  
    putStrLn "Test what integer for prime:"  
    entered <- getLine  
    let x = (read entered :: Int)
    let y = x ^ 5 
    print (y)  