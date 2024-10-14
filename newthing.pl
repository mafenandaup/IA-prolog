% ------------------ CLEAR SCREEN --------------------------
cls :- write('\33\[2J').
% ------------------ FATOS -----------------------------------

% filme(titulo,genero,diretor,ano,duracao)

filme('Amnésia','Suspense','Nolan',2000,113).
filme('Babel','Drama','Inarritu',2006,142).
filme('Capote','Drama','Miller',2005,98).
filme('Casablanca','Romance','Curtiz',1942,102).
filme('Matrix','Ficção','Wachowsk',1999,136).
filme('Rebecca','Suspense','Hitchcock',1940,130).
filme('Shrek','Aventura','Adamson',2001,90).
filme('Sinais','Ficção','Shymalan',2002,106).
filme('Spartacus','Ação','Kubrik',1960,184).
filme('Superman','Aventura','Donner',1978,143).
filme('Titanic','Romance','Cameron',1997,194).
filme('Tubarão','Suspense','Spielberg',1975,124).
filme('Volver','Drama','Almodóvar',2006,121).

%-------------------------- REGRAS ------------------------    
dirigidoPor(Titulo,Diretor) :- filme(Titulo,_,Diretor,_,_).
classificadoPor(Titulo,Genero) :- filme(Titulo,Genero,_,_,_).
lancadoEm(Titulo,Ano) :- filme(Titulo,_,_,Ano,_).
duracaoInferiorA(Titulo, Tempo) :- filme(Titulo,_,_,_,Duracao),
                                  Duracao < Tempo, !.
                                  
lancadoEntre(Titulo,Minimo,Maximo) :- filme(Titulo,_,_,Ano,_),
                                    Ano > Minimo,
                                    Ano < Maximo.

                                %Identificando cabeça e cauda
%[‘Amnésia’, ‘Babel’, ‘Capote’, ‘CasaBlanca’]
% CABECA: AMNÉSIA, CAUDA DA LISTA; RESTO DOS ELEMENTOS. a lista, nesse caso, tem 
%tamanho 4
