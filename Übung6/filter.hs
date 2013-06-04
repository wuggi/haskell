import System.IO
import Data.List


filterLn :: (String -> Bool) -> [String] -> [String]
filterLn pred [] = []
filterLn pred (x:xs) =  let y=[ "Z"++show (head (findIndices pred (x:xs)))++""++":"++x | x <- xs, pred x]
						in y++[]++["Hits:"++show (length y)++"precentage: "++show ((length y)/(length (x:xs)))]
						
						
						
filterLnIO :: (String -> Bool) -> FilePath -> FilePath -> IO ()
filterLnIO pred path = 	do
					     file <- readFile path
					     y <- filterLn pred file
					     writeFile path y
					     
					     
						

--main :: IO()








