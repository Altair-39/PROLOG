pacifist(X) :- quacker(X), not -pacifist(X).

-pacifist(X) :- republican(X), not pacifist(X).

republican(nixon). 
quacker(nixon).
