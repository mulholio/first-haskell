-- fix the scope

module PrintBroken where

greeting = "Yarrrr"

printSecond :: IO ()
printSecond = do
  putStrLn greeting

main :: IO ()
main = do
  printSecond
  putStrLn greeting
