import qualified Data.List
import Data.List
import Data.Typeable

main ::  IO()

digs :: Integral x => x -> [x]
digs 0 = []
digs x = digs (x `div` 10) ++ [x `mod` 10]

main = do
    line <- getLine
    let number = (read (takeWhile (/= ' ') line) :: Int)

    let dig_list = digs number
    
    let x  = minimum dig_list

    let min_ind = elemIndex (x) dig_list

    let x = maximum dig_list

    let max_ind = elemIndex (x) dig_list

    if max_ind > min_ind then
        print $ "min is more to the left"
    else if max_ind == min_ind then
        print $ "max is the seme as min"
    else
        print $ "max is more to the left"

    --let digits = digs number
    --return 0

    --print $ findIndex (minimum kek) ([a])

    
