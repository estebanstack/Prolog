% Hechos De Padre
padre(john, mary).
padre(john, susan).
padre(peter, john).
padre(paul, david).

% Hechos de madre
madre(lisa, david).
madre(anna, mary).
madre(anna, susan).
madre(lucy, john).

abuelo(X, Y) :- padre(X, Z), padre(Z, Y).
abuelo(X, Y) :- padre(X, Z), madre(Z, Y).
[abuelo(X, Y) :- madre(X, Z), padre(Z, Y).
abuelo(X, Y) :- madre(X, Z), madre(Z, Y).

hermano(X, Y) :- padre(Z, X), padre(Z, Y), X \= Y.
hermano(X, Y) :- madre(Z, X), madre(Z, Y), X \= Y.

tio(X, Y) :- hermano(X, Z), padre(Z, Y).
tio(X, Y) :- hermano(X, Z), madre(Z, Y).






