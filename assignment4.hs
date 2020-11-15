--Question 1:

replace :: Int -> Int -> [Int] -> Int
replace x y [] = []
replace x y (k:ks) 
        |x == k      =y
        |otherwise   = replace x y (ks)
