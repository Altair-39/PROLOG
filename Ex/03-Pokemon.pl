% Pokemon

ha_tipo(pikachu,elettro).
ha_tipo(lampent,fuoco).
ha_tipo(lampent,spettro).

esegue_mossa(elettro,fulmine).
esegue_mossa(fuoco,vampata).
esegue_mossa(fuoco,braciere).
esegue_mossa(spettro,sgomento).

mossa(Pokemon,NomeMossa):-
                    ha_tipo(Pokemon,T),
                    esegue_mossa(T,NomeMossa).

mossa(pikachu,azione).

