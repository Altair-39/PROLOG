% somma degli elementi di una lista

sommalista([],0).
sommalista([Head | Tail], Ris) :- 
      sommalista(Tail,N),
      Ris is Head + N.

% prodotto degli elementi di una lista 

prodottolista([],0).
prodottolista([Head], Head).
prodottolista([Head | Tail], Ris) :-
      prodottolista(Tail,N), 
      Ris is N * Head.

% appartiene
% purtroppo lascia un punto di backtracking

appartiene(X, [X | _]).
appartiene(X, [_ | Tail]) :- 
    appartiene(X, Tail).

% inversione di una lista 

invertilista([],[]).
invertilista([Head | Tail], Ris) :-
    invertilista(Tail, InvTail), 
    append(InvTail, [Head], Ris). 

% inversione ottimale

invertiOpt(Lista, Ris) :-
    invertilista2(Lista, [], Ris).
invertilista2([], Acc, Acc).
invertilista2([Head | Tail], Acc, Ris) :-
    invertilista2(Tail, [Head | Acc], Ris).

% unione liste 

unione([],[],[]).
unione([], L, L).
unione(L, [], L).
unione([X | XS], L, [X | Temp]) :-
    \+member(X, L),
    unione(Tail, L, Temp).
unione([X | XS], L, Temp) :-
    member(X, L),
    unione(Tail, L, Temp).


