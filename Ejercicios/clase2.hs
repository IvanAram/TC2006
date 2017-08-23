-- OBTENER FACTORIAL CON TAIL RECURSION
factorialTail x = ft (x-1) x
    where ft n res 
		 | n == 0    = res 
	     | otherwise = ft (n-1) (res * n)

--OBTENER UNA LISTA AL REVES CON TAIL RECURSION
reverseList x = rev x []
    where rev arr res
    	 	| arr == [] = res
    	 	| otherwise = rev (init arr) (res ++ [last arr])

-- OBTENER EL MAXIMO Y EL MINIMO DE UNA LISTA Y REGRESARLO EN UNA TUPLA
maxminTupla (h:t) = maxmin t (h,h)
	where maxmin l (a,b)
			| l == [] = (a,b)
			| head l > a = maxmin l (head l,b)
			| head l < b = maxmin l (a, head l)
			| otherwise = maxmin (tail l) (a,b) 