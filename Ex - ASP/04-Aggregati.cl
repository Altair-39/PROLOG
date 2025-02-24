tipo(integer). 
tipo(float).
tipo(char). 
variabile(a).
variabile(b).

1 {assegna(X, T) : tipo(T)} 1 :- variabile(X).

#show assegna/2.
