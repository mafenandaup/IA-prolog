fruta(manga).
fruta(banana).
fruta(limao).
doce(X) :- fruta(X), (X = manga; X = banana).
?- doce(limao).
