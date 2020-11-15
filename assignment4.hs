--Question 1:

replace :: Int -> Int -> [a] -> [a]
replace x y [] = []
replace x y (k:xs) 
        |x == k      =y
        |otherwise   = replace x y(xs)
