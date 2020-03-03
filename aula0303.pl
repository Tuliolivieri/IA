imprime([]).
imprime([C|Ca]):- imprime(Ca),nl,write(C).

oposto(d,e).
oposto(e,d).

permitido([FC,FC,_,_]).
permitido([X,C,X,X]):- oposto(X,C).

%FAZENDEIRO VAI SOZINHO
pode_ir([F,C,L,R],[NF,C,L,R]):- oposto(F,NF).

%FAZENDEIRO + CARNEIRO
pode_ir([FC,FC,L,R],[NFC,NFC,L,R]):- oposto(FC,NFC).

%FAZENDEIRO + LOBO
pode_ir([FL,C,FL,R],[NFL,C,NFL,R]):- oposto(FL,NFL).

%FAZENDEIRO + REPOLHO
pode_ir([FR,C,L,FR],[NFR,C,L,NFR]):- oposto(FR,NFR).

resolve(Origem,Destino):- rota(Origem,Destino,[Origem],Cam).

rota(X,X,Cam,Cam).
rota(Origem,Destino,CamAux,Cam):-
    pode_ir(Origem,Vizinho),not(member(Vizinho,CamAux)),
    permitido(Vizinho),rota(Vizinho,Destino,[Vizinho|CamAux],Cam).
