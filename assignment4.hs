--Question 1:

replace :: Int -> Int -> [Int] -> [a]
replace x y [] = []
replace x y (k:ks) 
        |x == k      =y
        |otherwise   = replace x y (ks)
