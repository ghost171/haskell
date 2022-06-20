import Data.Maybe 
import Data.List

main :: IO()

main = do
    let xs = [1..100000] ++ [8,18..100] ++ [10,132,235]
    let r = nub $ xs \\ (nub xs)
    
    