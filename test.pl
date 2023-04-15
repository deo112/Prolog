woman(maria).
woman(alicia).
woman(teresa).
woman(barbara).
woman(anna).

man(jan).
man(tom).
man(peter).
man(adam).
man(mark).

parent(maria,tom).
parent(jan,tom).
parent(maria,alicia).
parent(jan,alicia).

parent(teresa,adam).
parent(tom,adam).
parent(teresa,barbara).
parent(tom,barbara).

parent(alicia,anna).
parent(peter,anna).
parent(alicia,mark).
parent(peter,mark).
parent(jadwiga,agnieszka).
parent(jadwiga,dariusz).
parent(agnieszka,dawid).


child(X,Y) :- parent(Y,X).

mother(X,Y) :- parent(X,Y), woman(X).
father(X,Y) :- parent(X,Y), man(X).

grandmother(X,Y) :- mother(X,Z), parent(Z,Y).

siblings(X,Y) :- mother(Z,X), mother(Z,Y),  X \= Y. %różne osoby mają tę samą matkę
siblings(X,Y) :- father(F,X), father(F,Y), X \= Y. %różne osoby mają tego samego ojca

sister(X,Y) :-  siblings(X,Y), woman(X). 

auntoruncle(X,Y):-  siblings(Z, X), parent(Z,Y).