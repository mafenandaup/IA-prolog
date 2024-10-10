:- initialization(main).
:- dynamic maria_dosdog/2.

main :-
    hello,
    likeme,
    write('hi'), nl,
    maria_dosdog(maria, peixe),
    true.

hello :-
    write('Hello, World!'), nl.

likeme :-
    write('yes i do!'), nl.

pets(maria, cachorro).
pets(maria, peixe).
pets(john, gato).
pets(elisa, coala).

maria_dosdog(X, Y) :- pets(X, Y).

