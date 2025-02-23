% penultimo

penultimo([_ | tail], Elemento) :-
    \+ length([_ | tail], 2), 
    penultimo(tail, Elemento).

penultimo([Head | Tail], Elemento) :-
    length(Tail,1),
    Head == Elemento, !.


