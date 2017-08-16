import Data.Char
-- EJERCICIO 1 (z^2 == x^2 + y^2)
--TODOS LOS NUMEROS (INCLUYENDO DECIMALES)
[(x,y,z) | x <- [1..100], y <- [1..100], let z = sqrt(x^2 + y^2)]

--TODOS LOS NUMEROS (EXCLUYENDO DECIMALES)
[(x,y,z) | x <- [1..100], y <- [1..100], z <- [1..100], z^2 == x^2 + y^2]



-- EJERCICIO 2 (contar numeros negativos)
--RESPUESTA 1
length [a | x <- [-1000..1000], x < 0]

--RESPUESTA 2
length(filter(<0) [-1000..1000])



-- EJERCICIO 3 (suma numeros impares)
sum [x | x <- [1..1000000], mod x 2 == 1]



-- EJERCICIO 4 (texto de minusculas a mayusculas)
--CON MAP
map(toUpper)[x | x <- "abcdefghijklmnopqrstuvwxyz"]

--SIN MAP
[y | x <- "abcdefghijklmnopqrstuvwxyz", let y = toUpper x]