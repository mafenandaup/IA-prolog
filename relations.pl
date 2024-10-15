
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

%outro exemplo pra descendentes - no caso, o que o prof passou

%filho/2 (parâmetro/aridade)
filho(joao,ana). %joão é filho de ana%
filho(ana,maria).
filho(maria,pedro).
filho(gabriel,pedro).
filho(livia,gabriel).
filho(livia,carla).
descendente(X,Y):-filho(X,Y).
descendente(X,Z):-filho(X,Y),descendente(Y,Z).

% temperatura média - trabalhando com números em prolog

%avg_Temp/2
avg_temp(berlin,49).
avg_temp(paris,56).
avg_temp(brazil, 75).
avg_temp(milan, 75).

avg_temp_celsius(Cidade, C_Temp) :- 
    avg_temp(Cidade, F_Temp), 
C_Temp is round((5/9) * (F_Temp - 32)).

play_outside(Cidade) :- avg_temp_celsius(Cidade, C_temp), 
C_temp < 15, 
write('esta muito frio para brincar').

play_outside(Cidade) :- avg_temp_celsius(Cidade, C_temp), 
C_temp >= 15, 
write('pode brincar lá fora').

sametemp(Cidade1,Cidade2) :-
avg_temp(Cidade1, F_Temp1),
avg_temp(Cidade2, F_Temp2),
F_Temp1 = F_temp2.