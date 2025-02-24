uccello(X) :- pinguino(X).
-vola(X) :- pinguino(X).
vola(X) :- uccello(X), not -vola(X).
vola(tux).
pinguino(tux).


