% pinguini

uccello(X) :- pinguino(X).
uccello(tux).

vola(X) :- uccello(X), \+ pinguino(X).

pinguino(tux).
pinguino(tweety).

