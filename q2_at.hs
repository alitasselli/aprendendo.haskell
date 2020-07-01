
removeIndex :: Int -> Int -> [Int] -> [Int] -> [Int] -- 0 -> 3 -> [] -> [1,2,3,4,5]
removeIndex c x l (y:ys) | c /= x = removeIndex (c+1) x (l ++ [y]) ys
                         | otherwise = l ++ ys

removeC :: Int -> [Int] -> [Int]
removeC x y | abs(x) `mod` length y > 0 = removeIndex 0 (abs((x `mod` length y) - length y)) [] y
            | otherwise = removeIndex 0 0 [] y

removeD :: Int -> [Int] -> [Int]
removeD x y | abs(x) `mod` length y > 0 = removeIndex 0 ((abs(x) `mod` length y) - 1) [] y
            | otherwise = removeIndex 0 (length y - 1) [] y

removeN :: Int -> [Int] -> [Int]
removeN x y | abs(x) <= length y && x > 0 = removeIndex 0 (length y - x) [] y
            | abs(x) <= length y && x < 0 = removeIndex 0 (abs (x) - 1) [] y
            | abs(x) > length y && x > 0 = removeC x y
            | abs(x) > length y && x < 0 = removeD x y


