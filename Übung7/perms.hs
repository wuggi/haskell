import Data.List

-- Bind/Sequence
perms' :: Eq a => [a] -> [[a]]
perms' [] = [[]]
perms' l = l>>=head : perms'(delete (l>>=head) l)

-- do-Notation
perms'' :: Eq a => [a] -> [[a]]
perms'' [] = [[]]
perms'' l = do x <- head l
			   y <- perms''(delete x y)
			   return (x:y)
