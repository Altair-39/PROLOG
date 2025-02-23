% itdeeping

initialize :- 
    retractall(current_depth(_)), 
    assert(current_depth(1)).

risolvi(S, [], _, _) :- finale(S), !.
risolvi(S, [Az | ListaAzioni], Visitati, ProfMax) :-
    ProfMax > 0,
    applicabile(Az, S), 
    trasforma(Az, S, SNuovo),
    \+ member(SNuovo, Visitati),
    NuovaProfMax is ProfMax - 1,
    risolvi(SNuovo, ListaAzioni, [S | Visitati], NuovaProfMax).

prova(Cammino) :-
    initialize, 
    iniziale(S0), 
    current_depth(D), 
    risolvi(S0, Cammino, [], D). 

prova(Cammino) :-
    current_depth(D), 
    DNew is D + 1,
    retractall(current_depth(_)),
    assert(current_depth(DNew)),
    prova(Cammino).
