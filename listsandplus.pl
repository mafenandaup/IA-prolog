:- dynamic pairparts/2.
%%listas%%

meusfavs(['danca','canto','pintura','bailes','desenhos']).
%cabeça: dança,; cauda: resto.
listavazia(['oi']). %%pra executar: listavazia([H|T]) = listavazia(['oi']).

pairparts([H|T], H,T).
%9 ?- pairparts(a,b,c). é falso porque os itens abaixo não são pares ou listas.

%10 ?- pairparts([1|2], X,Y).
%X = 1,
%Y = 2.

%14 ?- pairparts([a,b,c,d,e],X,Y).
%X = a,
%Y = [b, c, d, e].

%11 ?-  pairparts(['coisas fav:'|meusfavs(X)],X,Y). 
%X = 'coisas fav:',
%Y = meusfavs('coisas fav:').

pairparts_combined(['coisas fav:'|List], X, Y) :-
    meusfavs(List),
pairparts(['coisas fav:'|List], X).

headoflist([H|T], H).
%21 ?- headoflist([hello,1,2],X).
%X = hello.

firstwo([A,B|_T],A,B).
% ?- firstwo([hi,everyone,1,2,3],A,B).
%A = hi,
%B = everyone.

onlythird([_,_,X3|_T], X3).
%?- onlythird([1,2,3,4,5,6],X3). X3 = 3.


%-----------RECURSÃO: SUPER IMPORTANTE!!-----------

