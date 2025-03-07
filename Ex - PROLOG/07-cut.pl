% Il Cut

contaPositivi([],0). 
contaPositivi([Head | Tail], TotalePos) :- 
                      Head > 0, 
                      contaPositivi(Tail, PosTail),
                      TotalePos is 1 + PosTail.
contaPositivi([Head | Tail], TotalePos) :- 
                      Head =< 0, 
                      contaPositivi(Tail, PosTail),
                      TotalePos is PosTail.

% Il cut (!) butta via tutti i punti di backtracking.

contaPositiviCut([],0). 
contaPositiviCut([Head | Tail], TotalePos) :- 
                      Head > 0, !, 
                      contaPositivi(Tail, PosTail),
                      TotalePos is 1 + PosTail.
contaPositiviCut([_ | Tail], _) :- 
                      contaPositivi(Tail, _).

%contare quanti elementi sono uguali a X

quantiUguali([], _, 0).
quantiUguali([X | Tail], X, Ris) :- !,
    quantiUguali(Tail, X, Temp),
    Ris is 1 + Temp.
quantiUguali([_ | Tail], X, Temp) :-
    quantiUguali(Tail, X, Temp).

% cut

provaCut(X, L) :-!,
    member(X, L),
    pari(X),
    nonprimo(X).
provaCut(12, _).

pari(2).
pari(4).
pari(6). 
nonprimo(4).
nonprimo(6).
nonprimo(9).
