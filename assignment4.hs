--Question 1:

replace :: Int -> Int -> [a] -> [a]
replace x y [] = []
replace x y [y] = x
maxlist x y (k:ks) 
        |x == k      =y
        |otherwise   = replace x y(ks)