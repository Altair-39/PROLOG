%   S E N D +
%   M O R E =
% -----------
% M O N E Y

cifra(0..9).
lettera(s;e;n;d;m;o;r;y).

% ATTENZIONE: S <> s

% A ogni lettera associo una e una sola cifra

1 {assegna(L,C):cifra(C)} 1:- lettera(L).

% A ogni cifra associo al più una lettera. 

0 {assegna(L,C):lettera(L)} 1 :- cifra(C).

sommaok:-cifra(S;E;N;D;M;O;R;Y),
assegna(s,S),assegna(e,E),assegna(n,N),assegna(d,D),
assegna(m,M),assegna(o,O),assegna(r,R),assegna(y,Y),
S*1000+E*100+N*10+D+M*1000+O*100+R*10+E==
M*10000+O*1000+N*100+E*10+Y,S>0,M>0.  

:-not sommaok.

#show assegna/2.
