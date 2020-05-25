-- LOG2 X COM A APROXIMACAO INFERIOR
log2 :: Int -> Int
log2 x = x `div` 2 

-- CONVERTER DE C PARA F && F PARA C
convert :: Char -> Int -> Int
convert x y | (x == 'C') = y * 9`div`5 + 32
            | (x == 'F') = (y - 32) * 5 `div`9


-- O ANO E BISSEXTO?
leap :: Int -> Char
leap x | mod x 400 == 0 = 'Y'
       | (mod x 4 == 0) && (mod x 100 /= 0) = 'Y'
       | otherwise = 'N'