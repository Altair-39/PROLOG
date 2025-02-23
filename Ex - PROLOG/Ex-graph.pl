
% Define edges
arco(1, 2). 
arco(2, 3).

path(X, Y, [X]) :- 
    X == Y, 
    write("Soddisfatto\n").

path(X, Y, [X | Cammino]) :-
    arco(X, Z),
    write("Passaggio da "), write(X), write(" a "), write(Z), nl,
    path(Z, Y, Cammino).

