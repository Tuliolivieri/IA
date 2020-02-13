%fatos
homem(norberto).
homem(pierre).
homem(bruno).

mulher(berta).
mulher(ursula).

bonito(ursula).
bonito(norberto).
bonito(pierre).

rico(norberto).
rico(berta).

forte(berta).
forte(pierre).
forte(bruno).

amavel(bruno).

%relacao
%Todos os homens gostam de mulheres bonitas
gosta(X,Y) :- homem(X), mulher(Y), bonito(Y).

%Berta gosta de qualquer homem que gosta dela
gosta(X,Y) :- X = berta, homem(Y), gosta(Y,X).
%Ursula gosta de qualquer homem que gosta dela,
%desde que seja rico, amavel, bonito e forte
gosta(ursula,Y) :- homem(Y), rico(Y), amavel(Y),
    bonito(Y), forte(Y), gosta(Y,ursula).

%Regras
feliz(X) :- homem(X), rico(X).
feliz(X) :- homem(X), mulher(Y), gosta(Y, X), gosta(X, Y).
feliz(X) :- mulher(X), homem(Y), gosta(X, Y), gosta(Y, X).

