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
