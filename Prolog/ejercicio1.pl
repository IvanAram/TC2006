/*HECHOS*/
famoso(pedro).
famoso(juan).
hombre(pedro).
hombre(juan).
hombre(simon).
hombre(roberto).

padre(pedro,juan).
padre(roberto,pedro).
padre(simon,roberto).

/*(implicacion :-),(conjuncion ,),(disyuncion ;),(cut !)*/
/* recursividad (la de ancestro)*/
ancestro(X,Y):-padre(X,Y). /*caso base*/
ancestro(X,Y):-padre(X,Z),ancestro(Z,Y).
/*(tambien se puede asi)ancestro(X,Y):-padre(X,Z),ancestro(Z,Y);padre(X,Y).*/ 

feliz(X) :- hombre(X), famoso(X).

elementosLista([],Cont,Cont).
elementosLista([_|T],Cont,X):- Z is Cont+1, elementosLista(T,Z,X).
cuenta(Lista,X):-elementosLista(Lista,0,X).

sameLength(Lista1,Lista2):-cuenta(Lista1,X),cuenta(Lista2,Y),X=:=Y.

sameList([],[]).
sameList([H1|T1],[H2|T2]):-H1=:=H2,same(T1,T2).

splitea(Lista,X,Y) :- append(X,Y,Lista), length(X,Z), length(Y,K), Z =:= K, !.