% Azioni
% applicabile(Azione,Stato)

applicabile(su, pos(Riga, Colonna)) :-
    Riga > 1, 
    RigaSopra is Riga - 1, 
    \+ occupata(pos(RigaSopra, Colonna)).

applicabile(giu, pos(Riga, Colonna)) :-
    num_righe(NR), Riga < NR, 
    RigaSotto is Riga + 1, 
    \+ occupata(pos(RigaSotto, Colonna)).

applicabile(destra, pos(Riga, Colonna)) :-
    num_colonne(NC), Colonna < NC, 
    ColonnaDestra is Colonna + 1, 
    \+ occupata(pos(Riga, ColonnaDestra)).

applicabile(sinistra, pos(Riga, Colonna)) :-
    Colonna > 1, 
    ColonnaSinistra is Colonna - 1, 
    \+ occupata(pos(Riga, ColonnaSinistra)).

% trasforma(Az, S0, S1)

trasforma(su, pos(Riga, Colonna), pos(RigaSopra, Colonna)) :-
    RigaSopra is Riga - 1.

trasforma(giu, pos(Riga, Colonna), pos(RigaSotto, Colonna)) :-
    RigaSotto is Riga + 1.

trasforma(destra, pos(Riga, Colonna), pos(Riga, ColonnaDestra)) :-
    ColonnaDestra is Colonna + 1.

trasforma(su, pos(Riga, Colonna), pos(Riga, ColonnaSinistra)) :-
    ColonnaSinistra is Colonna - 1.
