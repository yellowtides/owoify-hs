module Main where

import Lib

main :: IO ()
main = do
        putStrLn "pwease input yow stwinyoong"
        str <- getLine
        putStrLn $ "hewe you go >>= " ++ (show . owoify) str

