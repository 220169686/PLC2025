ask :: String -> IO ()
ask prompt =
  do
  putStrLn prompt
  line <- getLine
  if line == "quit"
    then putStrLn ("quitting..")
    --once this line is completed as expected it exits automaticly
    else if line == ""
      then ask (prompt ++ "!")--adds a ! everytime user dosnt listen(eg keeps not entering anything)
      else do 
        putStrLn ("you said: " ++ reverse line)--puts words in reverse
        ask prompt

    

main :: IO ()
main =
  do
  let prompt = "please say something"--the prompt that is spoke about above
  ask prompt