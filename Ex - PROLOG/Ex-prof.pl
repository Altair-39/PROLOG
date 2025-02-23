% prof

prof(Term, 0) :- var(Term), !.

prof(Term, 1) :- atomic(Term), !.

prof(Term, Prof) :-
    Term =.. [_ | Args],
    prof_list(Args, SubProf),
    Prof is SubProf + 1.

prof_list([], 0).  
prof_list([H | T], MaxProf) :-
    prof(H, ProfH),     
    prof_list(T, ProfT),
    MaxProf is max(ProfH, ProfT). 
