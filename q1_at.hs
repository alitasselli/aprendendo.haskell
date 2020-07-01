--map.((.) (foldr (++) [] [[1], [2], [4,5,6], [3]]))

{-resolvendo a primeira parte da funcao teremos esse resultado :

foldr (++) [][[1],[2],[4,5,6],[3]])

1. [] ++ [3] = [3]
2. [3] ++ [4,5,6] = [3,4,5,6]
3. [3,4,5,6] ++ [2] = [3,4,5,6,2]
4. [3,4,5,6,2] ++ [1] = [3,4,5,6,2,1]

depois de resolver essa parte a funcao fica assim :

map.((.) [3,4,5,6,2,1])

o map precisa de dois parametros para ser aplicado,o tipo de map segundo visto em aula é :
(a -> b ) -> [a] -> [b] 
ele aplica uma "acao" a todos os elementos de uma lista que e o parametro da funcao

Analisando o deste modo : map ((.) [3,4,5,6,2,1])  (tirando o (.) entre o map e o parenteses) 

seriam aplicados - ((.) (([3,4,5,6,2,1])) - como os dois parametros do map

Como o (.) é uma operacao de composicao de lista nao faria sentido usar ele como parametro
pois sua acao e pegar o output de uma funcao x e aplicar como o input de uma funcao y.

Assim a acao que o (.) faz , nao e uma operacao que possa ser aplicada a uma lista de numeros
como o map aplica uma acao a todos os elementos nao existe aplicar (.) aos numeros 

Analisando o map composto com a saida : map.((.) (([3,4,5,6,2,1]))

O resultado do parenteses ((.) (([3,4,5,6,2,1])) "considerando que seria isso o output da funcao" 
deveria funcionar como o input a ser aplicado ao map 

Como citado anteriormente nada seria gerado no output, consequentemente nao teria um input 
a ser aplicado ao map, pois como o map aplica uma acao a todos os elementos nao existe aplicar os
um operador de composicao de funcao em uma lista , assim como a saida do parenteses para compor com 
o ""map."" nao e a saida de uma funcao e tambem nao poderia ser aplicado

-}




