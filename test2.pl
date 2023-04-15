like(anna,adam).
like(piotr, adam).
like(adam, andrzej).
like(paula, piotr).
like(maria, adam).
like(anna, maria).
like(piotr, maria).
like(maria, piotr).

%like(X,Y):- like(Y,X).
likee(X,Y) :- like(X,Y),like(Y,X).