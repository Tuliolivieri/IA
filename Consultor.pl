%Desenvolva em Prolog a Base de Conhecimento que resolva o seguinte problema:

% A função do consultor é ajudar um usuário a decidir se ele deve
% investir em uma conta de poupança ou no mercado de ações. Alguns
% investidores podem desejar dividir o seu dinheiro entre as duas opções.

% O investimento que será recomendado para um determinado investidor
% depende de sua renda e da sua quantia atual em poupança, de acordo com
% os seguintes critérios:
% - Indivíduos com uma conta de poupança inadequada devem sempre, como
% prioridade mais alta, aumentar a quantia poupada, independentemente de
% sua renda;
% - Indivíduos com uma conta de poupança adequada e uma renda adequada
% deveriam considerar um investimento mais arriscado, mas potencialmente
% mais lucrativo, no mercado de ações;
% - Indivíduos com uma renda pequena que já tenham uma conta de poupança
% adequada podem desejar dividir a sua renda excedente entre poupança e
% ações (combinação).
%
% A adequação entre poupança e renda é determinada pelo número de
% descendentes que um indivíduo mantém. Pela nossa regra, para uma
% poupança adequada, o indivíduo deve ter no mínimo R$5.000,00 no banco
% para cada dependente. Uma renda adequada deve ser estável e fornecer ao
% menos R$15.000,00 ao ano, mais um adicional de R$4.000,00 por cada
% dependente.

%Dada a descrição acima, execute as seguintes tarefas:

% 1 - Faça um programa em Prolog para implementação do consultor
% financeiro.
%Lembre-se das regras para recomendação de investimento.
%conta de poupança inadequada -> poupança;
%conta de poupança adequada e uma renda adequada -> ações;
%renda pequena e conta de poupança adequada -> poupança e ações

% 2 - Realize uma consulta em Prolog para a pergunta: Qual deve ser o
% investimento recomendado para um investidor que possui uma quantia
% poupada de R$22.000,00, uma renda estável de R$25.000,00 ao ano, e três
% dependentes?
