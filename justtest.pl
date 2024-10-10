:- initialization(main).

main :-
    hello,
    likeme,
    filmes,
    true.

hello :-
    write('Hello, World!'), nl.

likeme :-
    write('yes i do!'), nl.

filmes :-
    write('filme(\'Capote\',\'Drama\',\'Miller\',2005,98).'), nl.
