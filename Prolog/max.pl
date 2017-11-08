maxx([],X,X).
maxx([A|T],Max,X):- A > Max, maxx(T,A,X).
maxx([A|T],Max,X):- A =< Max, maxx(T,Max,X).
maximo([H|T],X):-maxx(T,H,X),!.