%fato
homem(joao).
homem(joaquim).
homem(luis).
homem(flavio).
homem(marcos).
homem(samuel).

mulher(ana).
mulher(maria).
mulher(luisa).
mulher(sueli).

%relacoes
progenitor(ana,joaquim).
progenitor(joao,joaquim).
progenitor(joao,luisa).
progenitor(maria,luis).
progenitor(joaquim,luis).
progenitor(luis,flavio).
progenitor(luisa,samuel).
progenitor(luisa,sueli).
progenitor(marcos,samuel).
progenitor(marcos,sueli).

irmao(X,Y) :- progenitor(Z,X), progenitor(Z,Y), X\=Y.
tio(X,Y) :- irmao(Z,X), progenitor(Z,Y).
