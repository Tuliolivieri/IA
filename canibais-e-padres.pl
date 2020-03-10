% TULIO PAULUCCI OLIVIERI - 101629230
% FELIPE PERUCHI SIMOES   - 101628633
%
% EXERCICIO CANIBAIS
%
oposto(leste,oeste).
oposto(oeste,leste).

% 1 padre
pode_ir([ME, CE, MD, CD, B], [NME, CE, NMD, CD, NB])
:- oposto(B, NB), ((B = leste, ME > 0, NME is ME - 1, NMD is MD + 1); MD > 0, NMD is MD - 1, NME is ME + 1).

% 1 canibal
pode_ir([ME, CE, MD, CD, B], [ME, NCE, MD, NCD, NB])
:- oposto(B, NB), ((B = leste, CE > 0, NCE is CE - 1, NCD is CD + 1); CD > 0, NCD is CD - 1, NCE is CE + 1).

% 1 canibal e 1 padre
pode_ir([ME, CE, MD, CD, B], [NME, NCE, NMD, NCD, NB])
:- oposto(B, NB), ((B = leste, CE > 0, ME > 0, NME is ME - 1, NMD is MD + 1, NCE is CE - 1, NCD is CD + 1);
           MD > 0, NMD is MD - 1, NME is ME + 1, CD > 0, NCD is CD - 1, NCE is CE + 1).

% 2 padres
pode_ir([ME, CE, MD, CD, B], [NME, CE, NMD, CD, NB])
:- oposto(B, NB), ((B = leste, ME > 1, NME is ME - 2, NMD is MD + 2); MD > 1, NMD is MD - 2, NME is ME + 2).

% 2 canibais
pode_ir([ME, CE, MD, CD, B], [ME, NCE, MD, NCD, NB])
:- oposto(B, NB), ((B = leste, CE > 1, NCE is CE - 2, NCD is CD + 2); CD > 1, NCD is CD - 2, NCE is CE + 2).

permitido([ME, CE, MD, CD, _]) :- ME >= CE, MD >= CD.
permitido([0, _, _, _, _]).
permitido([_, _, 0, _, _]).

rota(Ori, Dst, Cam) :- rota(Ori, Dst, [Ori], Cam).
rota(X, X, Cam, Cam).
rota(Ori, Dst, CamAux, Cam) :- pode_ir(Ori, Viz), not(member(Viz, CamAux)), permitido(Viz), rota(Viz, Dst, [Viz|CamAux], Cam).

write_rota([]).
write_rota([H|T]) :- write_rota(T), write(H), write(', ').

printa_tudo(Ori,Dst):-rota(Ori,Dst,Cam),write_rota(Cam).






