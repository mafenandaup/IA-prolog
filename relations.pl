
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

timescore(bahia,45).
timescore(botafogo,51).
timescore(fluminense, 23).
timescore(vitoria,36).
timescore(flamengo,40).

timematch(Team1, Team2) :- 
    timescore(Team1, Score1),
    timescore(Team2, Score2),
    ( Score1 > Score2 ->
    format('~w ganhou o jogo!', [Team1]) %w é um placeholder para o time.
; Score2 > Score1 ->
    format('~w ganhou o jogo!', [Team2])
; Score1 =:= Score2 ->
    write('O jogo terminou empatado!')
).
    
%robot AI
%lute contra pessoas terriveis

bom(fernando).
bom(liv).
bom(alicia).
mau(julia).
mau(tercisio).
mau(alice).

lutecontra(X) :- mau(X),format('combatendo o mal contra ~w', [X]).

%math
modulus(X, Y) :- Y is X mod 3. %%resto da divisão por 3
int_divide(X, Y) :- Y is X // 4. %%divisão inteira.
int_divide(X, Y) :- Y is X // 4.
power(X, Y) :- Y is X ^ 3.
square_root(X, Y) :- Y is sqrt(X).

round_number(X, Y) :- Y is round(X).
floor_number(X, Y) :- Y is floor(X).
ceil_number(X, Y) :- Y is ceiling(X).
absolute(X, Y) :- Y is abs(X).
exponential(X, Y) :- Y is exp(X).

% diferença entre = e is em prolog
% =
% Propósito: Usado para unificação de termos. 
%Ele não avalia expressões aritméticas, apenas verifica se os dois lados são iguais
% ou faz a unificação de variáveis.

%EX: ?- X = 5.
% X = 5.

%?- X = 5 + 3.
% X = 5 + 3.

%is
%Propósito: Usado para avaliação aritmética. 
%Ele avalia a expressão do lado direito e unifica com a variável no lado esquerdo.

%?- X is 5 + 3.
% X = 8.

%?- 8 is 5 + 3.
% true.


