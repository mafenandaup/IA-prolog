:- initialization(main).

main :-
    hello,
    likeme,
    write('hi'), nl,
    (maria_dosdog(maria, peixe) -> write('Maria has a peixe'), nl ; write('Maria does not have a peixe'), nl),
(singers(elisa, pintar) -> write('Is um cantor!') ;write('Is not um cantor!'),nl),
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

likes(maria,cantar).
likes(fernando,dancar).
likes(john,dancar).
likes(elisa, pintar).

singers(X,Y) :- likes(X,cantar).