import System.IO
import Data.List
import Data.Ord


transposeStr :: [String] -> [String]
transposeStr (x:xs) = do
						leng <- map length (x:xs)
						max <- maximum leng
					    if (length x) < max then 
							do x++"_"
							transposeStr (x:xs)
						else do
							transposeStr xs
						
						
						

transposeIO :: FilePath -> FilePath -> IO ()
transposeIO path = do
					str <- readFile path
					trans_str <- transposeStr str
					writeFile path trans_str
					
