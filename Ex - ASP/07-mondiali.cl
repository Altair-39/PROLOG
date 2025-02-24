team(qatar;olanda;brasile;argentina;inghilterra;germania;corea;arabia;ghana;camerun;giappone;canada;uruguay;australia;francia;spagna).
in(qatar,asia).
in(olanda,europa).
in(brasile,sudamerica).
in(argentina,sudamerica).
in(inghilterra,europa).
in(germania,europa).
in(corea,asia).
in(arabia,asia).
in(ghana,africa).
in(camerun,africa).
in(giappone,asia).
in(canada,nordamerica).
in(uruguay,sudamerica).
in(australia,oceania).
in(francia,europa).
in(spagna,europa).

% 4 gironi da 4 squadre, ciascuno con almeno 3 continenti
girone(1..4).

1 {assegna(Squadra,G):girone(G)} 1:-team(Squadra).
4 {assegna(Squadra,G):team(Squadra)} 4:-girone(G).

%
continente(asia;europa;sudamerica;africa;nordamerica;oceania).

3 {in(Squadra, C):continente(C)} 4 :- assegna(Squadra, G).
%

quantiCont(G,ContG):-girone(G),ContG = #count{Cont:assegna(S,G),in(S,Cont)}.

:-quantiCont(G,ContG),ContG < 3.

testa_di_serie(argentina;brasile;spagna;francia).

:-assegna(S1,G),assegna(S2,G),S1<>S2,testa_di_serie(S1),testa_di_serie(S2).

#show assegna/2.
#show quantiCont/2.
