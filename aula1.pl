%Fato
homem(joaquim).
homem(antonio).
homem(luis).

mulher(ana).
mulher(maria).
mulher(lucia).

gato(tico).

%Relações
gosta(joaquim,maria).
gosta(luis,lucia).
gosta(ana,tico).

progenitor(joaquim,ana).
progenitor(joaquim,lucia).
progenitor(lucia,antonio).
progenitor(maria,ana).

%Regra
avogeral(X,Y) :- progenitor(X,Z), progenitor(Z,Y).
avó(X,Y) :- avogeral(X,Y), mulher(X).
avo(X,Y) :- avogeral(X,Y), homem(X).
