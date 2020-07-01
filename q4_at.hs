{-*Main> ordPairs [('b',3),('c',2),('a',1)] 0
[('a',1),('b',3),('c',2)]
*Main> ordPairs [('b',3),('c',2),('a',1)] 1
[('a',1),('c',2),('b',3)]-}

ordFirst :: [(Int,Int)] -> [(Int)]
ordFirst [(a,b)] | fst 


ordPairs :: [[(Int,Int)] -> Int -> [[(Int,Int)] 
ordPairs a b | b == 0 ordFirst
             | otherwise = ordSec 

--retornar o maior elemento de dentro de uma lista 
maxList :: [Int] -> [Int]
maxList [] = []
maxList (a:[]) = [a]
maxList (a:as) | a > head(maxList as ) = [a]
		       | otherwise = maxList as

--numa lista de par inteiros retorne uma lista com o maior de cada par
maxPairList :: [(Int,Int)] -> [Int]
maxPairList a = map (uncurry max) a

--uncurry vai pegar o par max 
--e aplicar a funcao max ao elemento um e dois



-- maxList [2,3,1] == 2> head (maxList [3,1])

--ordenar uma tripla
ordenaTripla :: (Int,Int,Int) -> (Int,Int,Int)
ordenaTripla (a,b,c) | a<b && a<c && b<c = (a,b,c) 
                     | a<c && a<b && c<b = (a,c,b)
                     | b<a && b<c && a<c = (b,a,c)                  
                     | b<c && b<a && c<a = (b,c,a)
                     | c<a && c<b && a<b = (c,a,b)
                     | c<b && c<a && b<a = (c,b,a) 









