method1 x y = if even x == True then y else reverse y
method2 xs = [ ( method1 y ( xs!!y )) | y <- [0..length xs-1] ]

method3 xs
 | length xs > 0 = take 20 xs ++ " " ++ method3 (drop 20 xs)
 | otherwise = []
