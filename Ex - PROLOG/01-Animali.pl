% fatti

gatto(tom).

gatto(fred). 

tigre(mike).

graffia(fred).

% regole 

felino(X) :- gatto(X).

felino(X) :- tigre(X).

% felino(tom) == true 
% felino(mike) == true
% tigre(tom) == false

miagola(X) :- gatto(X),sveglio(X). 

sveglio(X) :- graffia(X).
