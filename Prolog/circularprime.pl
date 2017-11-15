:-dynamic tablaprimes/1.
isdivisible(X,Y):- 0 is X mod Y,!.
isdivisible(X,Y):- X > Y + 1, isdivisible(X,Y+1). 

isprime(2):-!.
isprime(A):- tablaprimes(A),!.
isprime(A):- not(isdivisible(A,2)),assert(tablaprimes(A)).

rotate([H|T],Z):- append(T,[H],Z).

iscircularprimerec(Lista,Cnt):-length(Lista,L),L =:= Cnt,!.
iscircularprimerec(Lista,Cnt):-length(Lista,L),L > Cnt,number_chars(O,Lista),isprime(O),rotate(Lista,Nueva),iscircularprimerec(Nueva,Cnt + 1).

iscircularprime(Num):-number_chars(Num,Chrs),iscircularprimerec(Chrs,0).