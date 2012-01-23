module Main
    ( main
    ) where

import System.Environment

main :: IO ()
main = do
    args <- getArgs
    let a = read (args !! 0) :: Double
    let b = read (args !! 1) :: Double
    putStrLn (show a ++ " + " ++ show b ++ " = " ++ show (a + b))
