import Sheep
import Data.Maybe
import Control.Monad

inc :: Int->Int
inc x = x-1

parents :: Int -> Sheep -> Maybe Sheep
parents x s =if(x/=1) then
				case (mother s) of
					Nothing -> Nothing
					Just m -> parents (inc x) m
			else
					mother s
				
				
		   


parents' :: Int -> Sheep -> [Sheep]
parents' x s =if(x/=1) then
				case (mother s) of
					Nothing -> []
					Just m -> case (father s) of
								Nothing -> []
								Just f -> (maybeToList (father s) ++ maybeToList(mother s))
				else 
					(maybeToList(mother s)++maybeToList(father s))
	
				
