
main = do
   
    putStrLn "Give the starting digit"--asks user
    a <- getLine --saves users answer to a
    

    putStrLn "Give the final digit"--asks user
    b <- getLine --saves users answer to b

    putStrLn "s(sum) or a(average)"--asks user
    op <- getline--saves users answer to op
    --create inpFunc
    let inpFunc = [a..b] --uses values a to b (eg a=1 & b=5 it will use 1,2,3,4,5)
    
    --Define applicatorFunc 
    applicatorFunc inpFunc s| s=='s' = sum inpFunc  --if statement converted to guards
                            | otherwise = (sum inpFunc)/5  
    
    let result = applicatorFunc inpFunc 'a' --Call applicatorFunc with inpFunc and 'a' as args
    putStrLn("sum = " ++ show(result))