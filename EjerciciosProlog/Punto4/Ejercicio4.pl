% Hechos de paternidad
padre(juan, luis).
padre(juan, maria).
padre(carlos, ana).
padre(luis, pedro).
padre(luis, sofia).

% Hechos de maternidad
madre(marta, luis).
madre(marta, maria).
madre(julia, ana).
madre(maria, pedro).
madre(maria, sofia).

% Hechos adicionales para complejidad
padre(raul, carlos).
madre(carmen, carlos).
padre(raul, marta).
madre(elena, marta).

% REGLAS
% Abuelo paterno y materno
abuelo_paterno(X, Y) :- padre(X, Z), padre(Z, Y).
abuelo_materno(X, Y) :- padre(X, Z), madre(Z, Y).
abuela_paterna(X, Y) :- madre(X, Z), padre(Z, Y).
abuela_materna(X, Y) :- madre(X, Z), madre(Z, Y).

% Primos
primo(X, Y) :- padre(Z, X), padre(W, Y), hermano(Z, W), X \= Y.
primo(X, Y) :- madre(Z, X), madre(W, Y), hermana(Z, W), X \= Y.

% Hermano y hermana
hermano(X, Y) :- padre(Z, X), padre(Z, Y), madre(W, X), madre(W, Y), X \= Y.
hermana(X, Y) :- madre(Z, X), madre(Z, Y), padre(W, X), padre(W, Y), X \= Y.

% Tíos
tio(X, Y) :- hermano(X, Z), padre(Z, Y).
tio(X, Y) :- hermano(X, Z), madre(Z, Y).
tia(X, Y) :- hermana(X, Z), padre(Z, Y).
tia(X, Y) :- hermana(X, Z), madre(Z, Y).
