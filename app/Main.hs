module Main where

import Lib

main :: IO ()
main = do
          putStrLn "[pwease input youw fiwe owo]"
          file <- getLine        
          str <- readFile file
          putStrLn $ "[hewe you go]" 
          putStrLn $ (show . owoify) str

