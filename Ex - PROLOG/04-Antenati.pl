% La famiglia agnelli

genitore(edoardo,gianni).
genitore(edoardo,clara).
genitore(edoardo,susanna).
genitore(edoardo,umberto).
genitore(edoardo,mariasole).
genitore(edoardo,giorgio).
genitore(edoardo,cristiana).
genitore(virginiaBourbon,gianni).
genitore(virginiaBourbon,clara).
genitore(virginiaBourbon,susanna).
genitore(virginiaBourbon,umberto).
genitore(virginiaBourbon,mariasole).
genitore(virginiaBourbon,giorgio).
genitore(virginiaBourbon,cristiana).
genitore(gianni,margherita).
genitore(marellaCaracciolo,margherita).
genitore(gianni,edoardo2).
genitore(marellaCaracciolo,edoardo2).
genitore(margherita,johnElkann).
genitore(alainElkann,johnElkann).
genitore(margherita,lapoElkann).
genitore(alainElkann,lapoElkann).
genitore(margherita,ginevraElkann).
genitore(alainElkann,ginevraElkann).
genitore(umberto,giovanni).
genitore(antonellaBechiPiaggio,giovanni).
genitore(umberto,andrea).
genitore(umberto,anna).
genitore(allegraCaracciolo,andrea).
genitore(allegraCaracciolo,anna).

% relazione per i nonni 

nonno(X,Y) :- genitore(X, Z), genitore(Z, Y).

% relazione per gli antenati 
% ATTENZIONE: definizione ricorsiva

antenato(X,Y) :- genitore(X,Y).
antenato(X,Y) :- genitore(Z,Y), antenato(X,Z).

% relazione di fratelli che hanno gli stessi genitori

fratelloGermano(X,Y) :- 
                        genitore(GenUno,X),
                        genitore(GenUno,Y),
                        genitore(GenDue,X),
                        genitore(GenDue,Y),
                        X \== Y,
                        GenUno \== GenDue.

% relazione di fratelli che non hanno gli stessi genitori 

fratelloUnilaterale(X,Y) :-
                            genitore(GenitoreComune,X),
                            genitore(GenitoreComune,Y),
                            X \== Y, 
                            genitore(GenitoreX,X),
                            genitore(GenitoreY,Y),
                            GenitoreX \== GenitoreComune,
                            GenitoreY \== GenitoreComune, 
                            GenitoreX \== GenitoreY.
