--Question 1:

replace :: Int -> Int -> [a] -> [a]
replace x y [] = []
maxlist x y (k:xs) 
        |x == k      =y
        |otherwise   = replace x y(xs)
