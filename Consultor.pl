% TULIO PAULUCCI OLIVIERI - 101629230
% FELIPE PERUCHI SIMOES   - 101628633
%
% CONSULTOR
%
% 1 - Fa�a um programa em Prolog para implementa��o do consultor
% financeiro.
%Lembre-se das regras para recomenda��o de investimento.
%conta de poupan�a inadequada -> poupan�a;
%conta de poupan�a adequada e uma renda adequada -> a��es;
%renda pequena e conta de poupan�a adequada -> poupan�a e a��es
%
% 2 - Realize uma consulta em Prolog para a pergunta: Qual deve ser o
% investimento recomendado para um investidor que possui uma quantia
% poupada de R$22.000,00, uma renda est�vel de R$25.000,00 ao ano, e tr�s
% dependentes


poupanca_adequada(Poupanca):- Poupanca > 5000.

renda_adequada(Renda, Dependentes):- (Renda * 12) > (15000 + Dependentes * 4000).

investir_poupanca(Poupanca):- not(poupanca_adequada(Poupanca)),
    write('Investir Poupanca').

investir_acoes(Poupanca, Renda, Dependentes):- poupanca_adequada(Poupanca),
    renda_adequada(Renda, Dependentes),
    write('Investir Acoes').

investir_ambos(Poupanca, Renda, Dependentes):- poupanca_adequada(Poupanca),
    not(renda_adequada(Renda, Dependentes)),
    write('Investir Poupanca e Acoes').

investir(Poupanca, Renda, Dependentes):- investir_poupanca(Poupanca);
    investir_acoes(Poupanca, Renda, Dependentes);
    investir_ambos(Poupanca, Renda, Dependentes).
