% TULIO PAULUCCI OLIVIERI - 101629230
% FELIPE PERUCHI SIMOES   - 101628633
%
% CONSULTOR
%
% 1 - Faça um programa em Prolog para implementação do consultor
% financeiro.
%Lembre-se das regras para recomendação de investimento.
%conta de poupança inadequada -> poupança;
%conta de poupança adequada e uma renda adequada -> ações;
%renda pequena e conta de poupança adequada -> poupança e ações
%
% 2 - Realize uma consulta em Prolog para a pergunta: Qual deve ser o
% investimento recomendado para um investidor que possui uma quantia
% poupada de R$22.000,00, uma renda estável de R$25.000,00 ao ano, e três
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
