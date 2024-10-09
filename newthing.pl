animal(cachorro).
animal(gato).

pode_miar(X) :- animal(X), X == gato.

?- pode_miar(gato).