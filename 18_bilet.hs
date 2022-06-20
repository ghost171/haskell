import Data.Maybe 
import Data.List
import Data.Array


main :: IO()

main = do
    word_string <- getLine
    print $ length $ words word_string

