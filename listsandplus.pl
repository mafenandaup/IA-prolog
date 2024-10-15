%%listas%%

meusfavs(['danca','canto','pintura','bailes','desenhos']).
%cabeça: dança,; cauda: resto.
listavazia(['oi']). %%pra executar: listavazia([H|T]) = listavazia(['oi']).

pairparts([H|T], H,T).
%9 ?- pairparts(a,b,c). é falso porque os itens abaixo não são pares ou listas.
