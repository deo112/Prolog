element_at(X, [X|_], 1) :- !.
element_at(X, [_|T], K) :- K > 1, K1 is K - 1,
    element_at(X, T, K1).

elem(X,[X|_],1).
elem(X,[_|T],K) :- elem(X,T,K1), K is K1+1.

dupli([],[]).
dupli([X|Xs], [X,X|T]) :- dupli(Xs,T).

my_rev(L1,L2) :- my_rev(L1,[],L2).

my_rev([],Ac,Ac).
my_rev([X|Xs], Ac,L2) :- my_rev(Xs,[X|Ac], L2).

start(X,L,[X|L]).

end(X,L,L1) :- my_rev(L,L2), start(X,L2,L3), my_rev(L3,L1).

rem_at(X, [X|Xs],1,Xs).
rem_at(X,[Y|Ls],K, [Y|Ys]) :- K>1, K1 is K-1, rem_at(X,Xs,K1,Ys).

take(_,0,[]).
take([X|Xs], N, [X|Ls]) :- N>0, N1 is N-1, take(Xs, N1, Ls).