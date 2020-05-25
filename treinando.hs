--aula listas 

--comprimento de uma lista

size_list :: [Int] -> Int
size_list [] = 0
size_list (a:as) = 1 + size_list as 

--verificar se as listas sao iguais

verify_lists :: [Int] -> [Int] -> Bool
verify_lists [] [] = True
verify_lists [] _ = False
verify_lists _ [] = False
verify_lists (a:as) (b:bs) | (a == b) = verify_lists as bs 
                     | otherwise = False

--retornar o inverso de uma lista dificil
reverse_aux :: [t] -> [t] -> [t]
reverse_aux [] reverse_l = reverse_l
reverse_aux (a:as) reverse_l = reverse_aux as reverse_l++[a]

reverse_list :: [t] -> [t]
reverse_list [] = []
reverse_list l = reverse_aux l []

--retornar o inverso de uma lista facil

rev_list :: [t] -> [t]
rev_list [] = []
rev_list (a:as) = rev_list as ++ [a]

--verificar se um elemento pertence a uma lista

belong :: [Int] -> Int -> Bool
belong [] _ = False
belong (a:as) n | (a == n) = True
                | otherwise = belong as n

--verificar o maior elemento de uma lista

bigger :: [Int] -> Int
bigger [a] = a
bigger (a:as) | (a > bigger as) = a
              | otherwise = bigger as

--verificar se todos os elementos sao pares

all_even :: [Int] -> Bool
all_even [] = True
all_even (a:as) | (mod a 2 /= 0) = False
                | otherwise = all_even as 

--funcao criar uma lista so de pares

filter_even :: Int -> Bool
filter_even x = mod x 2 == 0

make_list = [x | x <- [1..20], filter_even x, x > 5]

