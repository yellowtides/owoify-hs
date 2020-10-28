module Lib
    ( owoify
    ) where

owoify :: String -> String
owoify = flip (++) " owo" . insertYAll . map owoifyChar

-- returns ['l'/'L'/'r'/'R'] for ['w'/'W'], otherwise `id`
owoifyChar :: Char -> Char
owoifyChar c
    | c == 'L' || c == 'R' = 'W'
    | c == 'l' || c == 'r' = 'w'
    | otherwise            = c

-- inserts a 'y' between ['n'/'N'/'m'/'M'] and 'o'
insertYAll :: String -> String
insertYAll s = (concat . map fst) [uncurry insertY pair | pair <- zip s (drop 1 s)] ++ [last s]
          where
                insertY x y
                    | x `elem` "nNmM" && y `elem` "oO" = (x : "y", y)
                    | otherwise                        = ([x], y)
