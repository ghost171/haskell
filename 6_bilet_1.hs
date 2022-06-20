main :: IO()

main = do
    line <- getLine
    let n = (read (takeWhile (/= ' ') line) :: Int)
    let m = (read (drop 1 (dropWhile (/= ' ') line)) :: Int)
    let answer_1 = [n*x | x <- [1..m]]
    let answer_2 = [m*x | x <- [1..n]]
    print $ answer_1 ++ answer_2