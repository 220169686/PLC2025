module Main where

main =
    do
    print (myFunc1 5)   --cant name function with capital at start or integer (eg Myfun1 or 1myFun)
    print (myFunc2 10)
    print (myFunc3)

myFunc1 x = x*10
myFunc2 x = x*2
myFunc3 = "Hello, this is 3rd Func"