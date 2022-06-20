import Data.Array

main :: IO()

modifyArray :: Array Int Char -> Int -> Array Int Char
modifyArray arr i =
    arr // [(i, ' ')]


main = do
    line <- getLine
    string_input <- getLine
    let n = (read (takeWhile (/= ' ') line) :: Int)
    let m = (read (drop 1 (dropWhile (/= ' ') line)) :: Int)
    let letter_1 = string_input !! n
    let letter_2 = string_input !! m
    let (x,_:ys) = splitAt n string_input
    let string_input_1 = x ++ letter_2 : ys
    let (x,_:ys) = splitAt m string_input_1
    print $ x ++ letter_1 : ys