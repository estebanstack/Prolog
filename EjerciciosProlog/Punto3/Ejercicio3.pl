% Hechos
mamifero(perro).
mamifero(gato).
mamifero(elefante).
ave(aguila).
ave(pinguino).
reptil(cocodrilo).

% Caracter�sticas de los animales
vuela(aguila).
vuela(murcielago).
nada(pinguino).
nada(cocodrilo).

% Reglas para clasificaci�n
es_mamifero(X) :- mamifero(X).
es_ave(X) :- ave(X).
es_reptil(X) :- reptil(X).
puede_volar(X) :- vuela(X).
puede_nadar(X) :- nada(X).
