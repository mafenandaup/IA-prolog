
pessoa(maria, 16, brazil).
%% coloca ISSO no terminal: pessoa(X, Y, Z).

trabalho(joao,cozinha, 26).
trabalho(jonas,fotografia, 18).
trabalho(alice,atriz, 30).
trabalho(cintia,pedagoga, 24).
trabalho(amelie,cozinha, 36).

%regras

cargo(Nome,Profissao) :- trabalho(Nome,Profissao, _Idade).
idade(Nome,Idade) :- trabalho(Nome,_Profissao, Idade).

% 1° = ?- consult('relations.pl'). (NO TERMINAL)
% 2 = ?- trabalho(X, Y, Z).
% 3 = se gostar do resultado pressione enter, senão N.
% 4 = mesma coisa para ?- idade(X, Y)., ?-cargo(X,Y).
% 5 = você também pode fazer algo como ?- idade(X, Y), Y >= 30., ou ?- cargo(Nome, Profissao), Profissao = cozinha.


papis(jonas,tito).
papis(ferdinando, trevor).
papis(jonas,alice).
mamis(herminia, joao).
mamis(herminia, ferdinanda).
mamis(herminia, julia).

parente(X,Y) :- papis(X,Y). %fala que o pai X tem filho Y
parente(X,Y) :- mamis(X,Y). %fala que a mãe X tem filho Y



