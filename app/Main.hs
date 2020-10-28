module Main where

import Lib

main :: IO ()
main = do
        putStrLn "pwease input youw stwing owo"
        str <- getLine
        putStrLn $ "hewe you go: " ++ (show . owoify) str

