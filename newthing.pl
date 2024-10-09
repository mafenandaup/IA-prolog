filho(joao,ana).
filho(ana,maria).
filho(maria,pedro).
filho(gabriel,pedro).
filho(livia,gabriel).
filho(livia,carla).
descendente(X,Y):-filho(X,Y).
descendente(X,Z):-filho(X,Y),descendente(Y,Z).