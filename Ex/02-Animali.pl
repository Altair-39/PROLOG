% Animali

uccello(titty).
pinguino(tux).
gatto(tom).
pinguino(titty).

vola(X):-uccello(X),\+pinguino(X).
uccello(X):-pinguino(X).
