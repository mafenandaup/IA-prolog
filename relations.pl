%Identificando cabeça e cauda
%[‘Amnésia’, ‘Babel’, ‘Capote’, ‘CasaBlanca’]
% CABECA: AMNÉSIA, CAUDA DA LISTA; RESTO DOS ELEMENTOS. a lista, nesse caso, tem 
%tamanho 4

soma_lista([], 0).
soma_lista([H|T], Soma) :-
    soma_lista(T, SomaT),
    Soma is H + SomaT.

divisao_lista([],0).
divisao_lista