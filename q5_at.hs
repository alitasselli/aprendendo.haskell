{-*Main> compareSets [1,2,3,4,5] [3,4]  ////[]  -> [...] = b c a
"B c A"
*Main> compareSets "banana" "nanaba"  ////[] -> [] =   a = b
"A = B"
*Main> compareSets "caco" "macaco"   ////[.] ->[] = a c b
"A c B"
*Main> compareSets [True] [False]  ////[...] -> [...] = Disjoint
"Disjoint"
*Main> compareSets ['b','o','l','a'] ['b','u','l','e']  ////[.] -> [.] = Intersection
"Intersection" -}

--remover da lista todas as repeticoes desse elemento
remove :: Eq t => [t] -> [t] -> [t]
remove [] _ = []
remove x [] = x
remove (x:xs) (t:ts) = remove (comp t (x:xs) []) ts

--verificar se um elemento pertence a uma lista OK
verify :: Eq t => [t] -> t -> Bool
verify [] _ = False
verify (x:xs) n | x==n = True
                | otherwise = verify xs n 

--elementos q nao forem iguais .concatenar na lista vazia OK
comp :: Eq t => t -> [t] -> [t] -> [t]
comp _ [] y = y
comp r (x:xs) y | r /= x = comp r xs (x:y)
                | otherwise = y ++ xs

--lista so com os numeros repetidos OK
order :: Eq t => [t] -> [t] -> [t] -> [t]
order [] _ y = y
order _ [] y = y
order (x:xs) t y | verify t x = order xs (comp x t []) (x:y)
                 | otherwise = order xs t y

--cumprimento so funcuona p numero 
--(tornar geral seria ao passar o argumento direito)
sizeList :: [t] -> Int
sizeList [] = 0
sizeList (a:as) = 1 + sizeList as

compareAux :: Eq t => [t] -> [t] -> [t] -> [t] -> String
compareAux x y a b | sizeList x > sizeList y && sizeList a > sizeList b && sizeList x < sizeList a = "B c A" 
                   | sizeList x < sizeList y && sizeList a < sizeList b && sizeList y < sizeList b = "A c B" 
                   | sizeList x == 0 && sizeList y == 0 = "A = B" --ok
                   | sizeList x == sizeList y && sizeList a == sizeList b && sizeList x < sizeList a = "Intersection"
                   | otherwise = "Disjoint"


--funcao principal 
compareSets :: (Eq t) => [t] -> [t] -> String 
compareSets [] [] = []
compareSets x y = compareAux (remove x (order x y [])) (remove y (order x y [])) x y 


