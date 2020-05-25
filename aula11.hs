--questao 5
--teste[3,4,2,3,5,7,4,6,2,5]
--[3,4,5,7]
--caminhar na lista /o elemento nessa posicao e maior 
--que o elemento de duas posicoes anteriores

teste : [Int] -> [Int]
teste [] = []
teste [a] = [a]
teste [a,b] = [a,b]
teste xs = (xs !! 0) : (xs !! 1) : [ xs !! i | i <- [2..(lenght xs)-1], xs !! i > xs !! (i - 2) ]


--questao 6
sumDigits 543 = ((543 div 10)div 10)mod 10
               + ((543 div 10)mod 10) 
               + (543 mod 10)
bigSum

--questao 7

split
["CESAR", "SCHOOL"]

revert
["RASEC", "LOOHCS"]

join 
RASEC LOOHCS

invert xs c == join(revert(split xs c))