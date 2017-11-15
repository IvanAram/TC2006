myappend(A,B,B,A).
/*myappend([1,2,3|X],[4,5],X,Y).*/

myappend2(A-B,B,A).
/*myappend2([1,2,3|X]-X,[5,6],Y).*/ 

/*OTRAS COSAS (NOT DIFERENCE LIST)*/
:-dynamic tabla/3.
/*esto es si estas en el interprete*/
/*assert(oper(X,Y,Z):-(tabla(X,Y,Z),!; Z is (X+Y)*(X+Y),assert(tabla(X,Y,Z)) )).*/
/*tambien se puede*/
operacion(X,Y,Z):- tabla(X,Y,Z),!.
operacion(X,Y,Z):- Z is (X+Y)*(X+Y),assert(tabla(X,Y,Z)).