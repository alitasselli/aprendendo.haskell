--aula 10 

--1.

{-log2 :: Int -> Int
log2 1 = 0 `
log2 x = log2 (x div` 2) + 1-}

--aula 11

--3.

acharTres :: [Int] -> [Int]
acharTres a | length a <= 2 = []
acharTres (a1:a2:a3:as) | length (a1:a2:a3:as) >= 3 = [a1,a2,a3]

compararListaTres :: [Int] -> Bool
compararListaTres x | last x > head x = True
                    | length x <= 2 = False
                    | otherwise = False

ultimoElemento :: [Int] -> [Int]
ultimoElemento [] = []
ultimoElemento x = [last x]

acharDois :: [Int] -> [Int] 
acharDois (a1:a2:as) = [a1,a2]

concatenaCerto :: [Int] -> [Int] -> [Int]
concatenaCerto y x = acharDois x ++ y

testeParcial :: [Int] -> [Int]
testeParcial [] = []
testeParcial x | length x <= 2 = (init (init x)) 
testeParcial x | compararListaTres (acharTres x) = ultimoElemento (acharTres x) ++ testeParcial (tail x) 
               | otherwise = testeParcial (tail x) 

teste :: [Int] ->  [Int]
teste x  = concatenaCerto (testeParcial x ) x



--4.

splitAndMult :: [Int] -> Int -> ([Int],[Int])
splitAndMult a x = (npares a ,nimpares a x)

npares :: [Int] -> [Int]
npares [] = []
npares (a:as) | a `mod` 2 == 0 = a : npares as
              | otherwise = npares as

nimpares :: [Int] -> Int -> [Int]
nimpares [] _ = []
nimpares (a:as) x | a `mod` 2 /= 0 = a*x : nimpares as x
                  | otherwise = nimpares as x

--5.

mmDeTres :: Int -> Int -> Int -> (Int, Int)
mmDeTres a b c = (minDeTres a b c, maxDeTres a b c)

minDeTres :: Int-> Int-> Int -> Int
minDeTres a b c | (a<b) && (a<c) = a
                | (b<a) && (b<c) = b
                | otherwise  = c

maxDeTres :: Int -> Int -> Int -> Int
maxDeTres a b c | (a>b) && (a>c) = a
                | (b>a) && (b>c) = b
                | otherwise = c

--aula 12

--6. 

--meu codigo (menor para o maior)
ordenaTripla :: (Int,Int,Int) -> (Int,Int,Int)
ordenaTripla (a,b,c) | a<b && a<c && b<c = (a,b,c) 
                     | a<c && a<b && c<b = (a,c,b)
                     | b<a && b<c && a<c = (b,a,c)                  
                     | b<c && b<a && c<a = (b,c,a)
                     | c<a && c<b && a<b = (c,a,b)
                     | c<b && c<a && b<a = (c,b,a) 


--codigo Julio (maior p menor)
ordemTripla :: (Int, Int, Int) -> (Int, Int, Int)
ordemTripla (a, b, c) | a > b && a > c && b > c = (a, b, c)
                      | a > b && a > c && b < c = (a, c, b)
                      | b > a && b > c && a > c = (b, a, c)
                      | b > a && b > c && a < c = (b, c, a)
                      | c > a && c > b && a > b = (c, a, b)
                      | c > a && c > b && a < b = (c, b, a)


--7.

--juntar todas as listas para examinar os elementos 
juntarListas :: [[Int]] -> [Int]
juntarListas [] = []
juntarListas (a:as) = a ++ juntarListas as 

--ver quais sao os numeros que existem na lista juntada
verificarNumeros :: [Int] -> Int -> Bool
verificarNumeros [] _ = False
verificarNumeros (l:ls) n | l==n = True
                          | otherwise = verificarNumeros ls n

--tirar os repetidos da lista e deixar so um numero de cada 
tirarRepetidos :: [Int] -> [Int]
tirarRepetidos [] = []
tirarRepetidos (a:as) | verificarNumeros as a == False = a : tirarRepetidos as
                      | otherwise = tirarRepetidos as 

--vai comparar o elemento da lista com o resto somando +1
qtdRepeticoes :: Int -> [Int] -> Int
qtdRepeticoes _ [] = 0
qtdRepeticoes n (l:ls) | n == l = 1 + qtdRepeticoes n ls 
                       | otherwise = qtdRepeticoes n ls         

--vai pegar a lista tirar repetidos e comparar com juntar listas 
jantarTudo :: [Int] -> [Int] -> [(Int,Int)]
jantarTudo [] _ = []
jantarTudo x y = (head x, qtdRepeticoes (head x) y) : jantarTudo (tail x) y

--juntar tudo e concatenar [()] ++ [()] tuplas principal
group :: [[Int]] -> [(Int,Int)]
group x = jantarTudo (tirarRepetidos (juntarListas x)) (juntarListas x)

