:- initialization(main).

main :-
    hello,
    likeme,
    write('hi'), nl,
    true.

hello :-
    write('Hello, World!'), nl.

likeme :-
    write('yes i do!'), nl.

pets(maria, cachorro).
pets(maria, peixe).
pets(john, gato).
pets(elisa, coala).

maria_dosdog(X) :- pets(maria, cachorro).
?- maria_dosdog(maria, peixe).
