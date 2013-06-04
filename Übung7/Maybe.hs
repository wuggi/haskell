composeMaybe :: (a -> Maybe b) -> (b -> Maybe c) ->  (a -> Maybe c)
composeMaybe f g = (>>= g).(>>= f).return


--Test
times3 x = Just $ x * 3

test x
  | x == 0 = Nothing
  | otherwise = Just $ 1 / x
  
 

