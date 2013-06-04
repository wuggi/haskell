map' :: (a -> b) -> [a] -> [b]
map' f xs = [f x| x<-xs]

concat' :: [[a]] -> [a]
concat' ll = [x | l<-ll, x<-l]
