impiegato(anna;gino;mario;cristina).
incarico(apertura;chiusura;pulizia).


0 {responsabile(X,I) : incarico(I)} :- impiegato(X).

1 {responsabile(X,I) : impiegato(X)} 1:- incarico(I).

#show responsabile/2.
