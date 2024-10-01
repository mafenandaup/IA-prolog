Nome = "fefis" 
% essa é uma variável nome
'Babel','hitchcock','16'
% essas são sequencias de átomos, onde cada um é representado com aspas simples.
gosta(joao, pizza).
gosta(maria, sorvete).
gosta(ana, pizza).
amigo(X, Y) :- gosta(X, Z), gosta(Y, Z).

?- [amigos].
