main = do  
    putStrLn "Enter an integer to test for primacy:"  
    entered <- getLine  
    let x = (read entered :: Int)
    let factorings = [[a, b]| a <- [1..x], b <- [1..x], x == a * b]
    let isPrime = if length factorings < 3 then True else False
    print (isPrime)