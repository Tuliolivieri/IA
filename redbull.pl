%pilotos
piloto(lamb).
piloto(besenyei).
piloto(chambliss).
piloto(maclean).
piloto(mangold).
piloto(jones).
piloto(bonhomme).

%equipes
equipe(breitling).
equipe(redbull).
equipe(mediterranean).
equipe(cobra).
equipe(matador).

%aviao
aviao(mx2).
aviao(edge540).

%circuitos
circuito(istanbul).
circuito(budapest).
circuito(porto).

%venceu
venceu(jones,porto).
venceu(mangold,budapest).
venceu(mangold,istanbul).

%gates
gates(istanbul,9).
gates(budapest,6).
gates(porto,5).

%pilota
pilota(lamb,mx2).
pilota(besenyei,edge540).
pilota(chambliss,edge540).
pilota(maclean,edge540).
pilota(mangold,edge540).
pilota(jones,edge540).
pilota(bonhomme,edge540).

%pilotos das equipes
pilotoequipe(lamb,breitling).
pilotoequipe(besenyei,redbull).
pilotoequipe(chambli,redbull).
pilotoequipe(maclean,mediterranean).
pilotoequipe(mangold,cobra).
pilotoequipe(jones,matador).
pilotoequipe(bonhomme,matador).

equipevence(X) :- venceu(Y,Z),pilotoequipe(Y,X),circuito(Z).

%QUEM VENCEU A CORRIDA NO PORTO?
pilotovenceuporto(X) :- venceu(X,porto), piloto(X).
%QUAL A EQUIPE QUE GANHOU NO PORTO?
equipevenceuporto(X) :- venceu(Y,porto), pilotoequipe(Y,X).
%QUAIS OS PILOTOS QUE VENCERAM MAIS DE UM CIRCUITO?
%QUE CIRCUITOS TEM MAIS DE 8 GATES?
%QUE PILOTOS NÃO PILOTAM UM EDGE540?
