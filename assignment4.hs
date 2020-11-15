--Question 1:

replace :: Int -> Int -> [Int] -> [Int]
replace x y [] = []
replace x y (k:ks) 
        |x == k      = y : replace x y (ks)
        |otherwise   = k : replace x y (ks)
        
        
 --Question 2:
 
deletekth :: Int -> Int -> [a] -> [a]
deletekth k n [] = []
deletekth k n (x:xs)
    | n == 1 = deletekth k k xs
    | n > 1 = x : deletekth k (n-1) xs

delete :: Int -> [a] -> [a]
delete _ [] = []
delete 1 (_:_) = []
delete k lt = deletekth k k lt
