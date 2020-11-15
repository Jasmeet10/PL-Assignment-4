--Question 1:

replace :: Int -> Int -> [a] -> [a]
replace x y [] = []
maxlist x y (k:ks) 
        |x == k      =y
        |otherwise   = replace x y(ks)
