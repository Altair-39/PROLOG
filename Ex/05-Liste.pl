% somma degli elementi di una lista

somma([],0).
somma([Head | Tail], R) :- 
      somma(Tail,N), R is Head + N.

% prodotto degli elementi di una lista 

prodotto([],0).
prodotto([Head], Head).
prodotto([Head | Tail], Res) :-
      prodotto(Tail,PT), Res is PT * Head.

% appartiene
% purtroppo lascia un punto di backtracking

appartiene(X, [X | _]).
appartiene(X, [_ | Tail]) :- 
    appartiene(X, Tail).
