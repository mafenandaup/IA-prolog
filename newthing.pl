fruta(manga).
fruta(banana).
fruta(limao).

doce(X) :- fruta(X), (X = manga; X = banana).
amargo(figo).

?- doce(figo).
