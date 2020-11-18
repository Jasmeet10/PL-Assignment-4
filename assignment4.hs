--Question 1:

replace :: Int -> Int -> [Int] -> [Int]
replace x y [] = []
replace x y (k:ks) 
        |x == k      = y : replace x y (ks)
        |otherwise   = k : replace x y (ks)
        
        
 --Question 2:
 
deletekth :: Int -> Int -> [a] -> [a]
deletekth k t [] = []
deletekth k t (x:xs)
    | t == 1 = deletekth k k xs
    | t > 1 = x : deletekth k (t-1) xs

delete :: Int -> [a] -> [a]
delete _ [] = []
delete 1 (_:_) = []
delete k lt = deletekth k k lt


--Question 3:

oddelem [] = []
oddelem [z] = [z]
oddelem (z:y:ys) = z:oddelem ys

maxodd ::  [Int] -> Int
maxodd [] = error "Empty List"
maxodd [x] =  x
maxodd lt = maximum (oddelem lt)

--Question 4:

removedups :: Eq a => [a] -> [a]
removedups [] = []
removedups (x:xs)
    |elem x xs = removedups xs
    |otherwise = x:removedups xs
    
    
union :: (Eq a) => [a] -> [a] -> [a]
union lt1 lt2 =  removedups (lt1 ++ lt2)
                        
                        
-- Question 5:

flatten :: [[Int]]->([Int])
flatten(lt) = (res) where
	h = head lt
	l = last lt
	res = h ++ l
