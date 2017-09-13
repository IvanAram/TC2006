--- EJERCICIO 1 ---
ejercicio1 = head [x | x <- [10000..1000000000], sum (map (mod x) [1..20]) == 0]

--- EJERCICIO 2 ---
findceros [] = False
findceros (h:t)
	| h == 0 = True
	| otherwise = findceros t

ej2 secnum = fn2 secnum 2 [] 
	where fn2 limit x res 
		| (length res) == limit = res
		| findceros (map (mod x) res) = fn2 limit (x+1) res
		| otherwise = fn2 limit (x+1) (res ++ [x]) 

ejercicio2 = head (reverse (ej2 10001))

--- EJERCICIO 3 ---
ejercicio3 = maximum [x*y | x <- [100..999], y <- [100..999], reverse (show (x*y)) == show (x*y)]

--- EJERCICIO 4 ---
data Tree a = EmptyTree | Node a (Tree a) (Tree a) deriving (Show,Read,Eq)

insertTree x EmptyTree = Node x (EmptyTree)(EmptyTree)
insertTree x (Node y left right)
           | x == y = Node x left right
           | x < y  = Node y (insertTree x left) right
           | x > y  = Node y left (insertTree x right)

ejercicio4 EmptyTree = []
ejercicio4 (Node n left right) = ejercicio4 left ++ [n] ++ ejercicio4 right