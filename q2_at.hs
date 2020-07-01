{-*Main> replace "segunda" "quinta" "As aulas ocorrem nas segundas."
"As aulas ocorrem nas quintas."
*Main>
Conteúdo relacionado: lista -}


teste :: String -> String -> String -> String
teste a b (c:cs) | a == c = a ++ " " ++ b 
                 | otherwise = teste a cs



replace :: String -> String  -> String -> String 
replace a b (c:cs)| a == c = c ++ " " ++ b 
                  | otherwise = replace a == cs ++ " " ++ b 


{-replace "segunda" "quinta" "As aulas ocorrem nas segundas."

"as" "aulas" "ocorrem" "nas" "segundas" "."

comparar cada item individualmente 

as == segunda = FALSE
aulas == segunda = FALSE 
ocorrem == segunda = FALSE 
nas == segunda = FALSE 
segunda == segunda = TRUE
retirar segunda da frase 
concatenar quinta com a frase no lugar da segunda-}