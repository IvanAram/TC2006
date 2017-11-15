/* Ejercicio 1 */
temp(_,[],X,Y,X,Y).
temp(Num,[H|T],X,Y,Mayores,Menores):-H=:=Num,temp(Num,T,X,Y,Mayores,Menores).
temp(Num,[H|T],X,Y,Mayores,Menores):-H<Num,append(Y,[H],A),temp(Num,T,X,A,Mayores,Menores).
temp(Num,[H|T],X,Y,Mayores,Menores):-H>Num,append(X,[H],A),temp(Num,T,A,Y,Mayores,Menores).
separate(Num,Lista,Z,W):-temp(Num,Lista,[],[],Z,W),!.

/* Ejercicio 2 */
ordenar([],[]).
ordenar([H|T],X):-separate(H,T,May,Men),ordenar(Men,Y),ordenar(May,Z),append(Y,[H],Ttt),append(Ttt,Z,X).