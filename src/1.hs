twoSum nums target = head([(i, j)|(i,ele_i) <- l, (j, ele_j) <- l, i < j, ele_i + ele_j == target])
    where l = zip [0..] nums

main = do
    line <- getLine
    let nums = map read (words line) :: [Int]
    line2 <- getLine
    let target = (read line2 :: Int)
    print (twoSum nums target)