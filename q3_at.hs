{- *Main> inverse ["eXeMpLoUm", "eXeMpLoDoIs"]
"MuOlPmExESiOdOlPmExE"-}

-- retorna o índice de um caractere na lista
-- retorna -1 se não existe
index :: Int -> Char -> String -> Int
index i _ [] = -1
index i a (x:xs) | a == x = i
                 | otherwise = index (i+1) a xs

-- retorna o inverso do input
revList :: [t] -> [t]
revList [] = []
revList as = foldr (\a as -> as ++[a]) [] as

-- transforma um char maiusculo em minusculo e vice-versa
switchCase :: Char -> Char
switchCase a | (index 0 a ['A'..'Z']) /= -1 = ['a'..'z'] !! (index 0 a ['A'..'Z'])
             | otherwise = ['A'..'Z'] !! (index 0 a ['a'..'z'])

-- funcao principal
inverse :: [String] -> String
inverse [] = []
inverse (a:as) = map switchCase (revList a) ++ inverse as 
