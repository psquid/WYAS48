module Main
    ( main
    ) where

import System.IO

main :: IO ()
main = do
    putStr "Enter name: " >> hFlush stdout
    name <- getLine
    putStrLn ("Hello, " ++ name)
