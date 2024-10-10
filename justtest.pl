:- initialization(main).

main :-
    hello,
    likeme,
    filmes(Capote),
    write(Capote), nl,
    true.

hello :-
    write('Hello, World!'), nl.

likeme :-
    write('yes i do!'), nl.

filmes(filme('Capote','Drama','Miller',2005,98)).
