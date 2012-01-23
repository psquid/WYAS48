module Main
    ( main
    ) where

import Text.ParserCombinators.Parsec hiding (spaces)

symbol :: Parser Char
symbol = oneOf "!#$%&|*+-/:<=>?@^_~"

readExpr :: String -> String
readExpr input = case parse symbol "lisp" input of
    Left err  -> "No match: " ++ show err
    Right val -> "Found value"

main :: IO ()
main = do
    expr <- getLine
    putStrLn (readExpr expr)
