hd :: [a] -> [a]
hd []     =  []
hd (x:xs) =  [x]

tl:: [a] -> [[a]]
tl []     = []
tl (x:xs) = [xs]


transpose' :: [[a]] -> [[a]]
transpose' []       =  []
transpose' ([]:ls)  =  transpose' ls
transpose' ll       =  ll>>=hd : transpose'((ll>>=tl))


-- do-Notation
transpose'' :: [[a]] -> [[a]]
transpose'' []       =  []
transpose'' ([]:ls)  =  transpose'' ls
transpose'' ll       =  do x <-map head ll
                           y <- transpose'' (map tail ll)
                           return (x:y)
