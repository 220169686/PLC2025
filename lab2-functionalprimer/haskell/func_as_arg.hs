-- --create inpFunc
-- inpFunc = [a..b] 

-- --Define applicatorFunc 
-- applicatorFunc inpFunc s    | s=='s' then sum inpFunc
--                             | otherwise  (sum inpFunc)/5  

main = do
   
    putStrLn "Give the starting digit"
    a <- getLine 
    

    putStrLn "Give the final digit"
    b <- getLine 

    putStrLn "s(sum) or a(average)"
    op <- getline

    let inpFunc = [a..b] 
    
    --Define applicatorFunc 
    applicatorFunc inpFunc s| s=='s' = sum inpFunc
                            | otherwise = (sum inpFunc)/5  
    
    let result = applicatorFunc inpFunc 'a' --Call applicatorFunc with inpFunc and 'a' as args
    putStrLn("sum = " ++ show(result))