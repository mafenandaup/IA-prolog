
%predicado membro de uma lista usando variaveis anonimas

membro(X,[X|_]).
membro(X,[_|T]):-membro(X,T).