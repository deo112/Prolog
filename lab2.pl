max2(X,Y,Z) :- X>Y, Z=X, !. %wykrzyknik  - po znalezieniu wartości nie 'idzie' dalej
max2(X,Y,Z) :- X=<Y, Z=Y.

max22(X,Y,Z) :- max_member(Z,[X,Y]).


%rekurencja (?)
isList([]).
isList([_|Xs]) :- isList(Xs).

isMember(X,[X|_]) :- !.
isMember(X,[_|Xs]) :- isMember(X,Xs).

myLast(X,[X]).
myLast(X,[_|T]) :- myLast(X,T).

myLast2(X,L) :- reverse(L,L2), L2=[X|_].

drugi(X,[_,X|_]).

multiply([],[],[]).
multiply([X|Xs], [Y|Ys], [Z|Zs]) :- Z is X*Y, multiply(Xs,Ys,Zs).

suma([],0).
suma([L|Ls],X) :- suma(Ls,X1), X is X1 + L.

myLength([],0).
myLength([_|Ls],X) :- myLength(Ls,X1), X is X1 + 1.

sumaDod([],0).
sumaDod([L|Ls],X) :- X>0, sumaDod(Ls,X1), X is X1+L, !. % \+ X>0

sumaDod([L|Ls],X) :- X=<0, sumaDod(Ls,X1), X is X1.