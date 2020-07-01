data Inhabitant = Elves String | Humans String | Dwarves String | Hobbits String deriving (Ord, Eq)

moreImportant :: Inhabitant -> Inhabitant -> Bool
moreImportant x y | x > y = True
                  | otherwise = False

data Tree x = Nnull | Node x (Tree x) (Tree x) 
    deriving (Show, Eq)

