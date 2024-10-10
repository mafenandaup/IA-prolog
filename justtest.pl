:- initialization(main).

main :-
    hello,
    likeme,
    true.

hello :-
    write('Hello, World!'), nl.

likeme :-
    write('yes i do!'), nl.
