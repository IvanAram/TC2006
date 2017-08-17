import Data.Char

--		EJERCICIO 1 (z^2 == x^2 + y^2)
--		TODOS LOS NUMEROS (INCLUYENDO DECIMALES)
[(x,y,z) | x <- [1..100], y <- [1..100], let z = sqrt(x^2 + y^2)]

--		TODOS LOS NUMEROS (EXCLUYENDO DECIMALES)
[(x,y,z) | x <- [1..100], y <- [1..100], z <- [1..100], z^2 == x^2 + y^2]




-- 		EJERCICIO 2 (contar numeros negativos)
--		RESPUESTA 1
length [a | x <- [-1000..1000], x < 0]

--		RESPUESTA 2
length(filter(<0) [-1000..1000])




--		EJERCICIO 3 (suma numeros impares)
sum [x | x <- [1..1000000], mod x 2 == 1]




--		EJERCICIO 4 (texto de minusculas a mayusculas)
--		CON MAP
map(toUpper)[x | x <- "abcdefghijklmnopqrstuvwxyz"] -- ESTO SE PUEDE HACER SIN LIST COMPRESSION

--		SIN MAP
[y | x <- "abcdefghijklmnopqrstuvwxyz", let y = toUpper x]

--		CON FUNCION
mFunc y = [toUpper x | x <- y]




--		EJERCICIO 5 (recursividad)
maxlist [] = error "Error"
maxlist [e] = e
maxlist (h:t) = max h (maxlist t) 




--		EJERCICIO 6 (factorial)
factorial 0 = 1
factorial 1 = 1
factorial n = n * factorial (n-1)




--		EJERCICIO 7 (ultimos a numeros de una lista)
lasttt 0 b = []
lasttt a [] = error "Error"
lasttt a b =  lasttt (a-1) (init b) ++ [last b]