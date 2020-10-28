module Main where

import Lib

main :: IO ()
main = do
          str <- getContents
          putStrLn $ (show . owoify) str
