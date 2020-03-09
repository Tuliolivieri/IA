%Desenvolva em Prolog a Base de Conhecimento que resolva o seguinte problema:

% A fun��o do consultor � ajudar um usu�rio a decidir se ele deve
% investir em uma conta de poupan�a ou no mercado de a��es. Alguns
% investidores podem desejar dividir o seu dinheiro entre as duas op��es.

% O investimento que ser� recomendado para um determinado investidor
% depende de sua renda e da sua quantia atual em poupan�a, de acordo com
% os seguintes crit�rios:
% - Indiv�duos com uma conta de poupan�a inadequada devem sempre, como
% prioridade mais alta, aumentar a quantia poupada, independentemente de
% sua renda;
% - Indiv�duos com uma conta de poupan�a adequada e uma renda adequada
% deveriam considerar um investimento mais arriscado, mas potencialmente
% mais lucrativo, no mercado de a��es;
% - Indiv�duos com uma renda pequena que j� tenham uma conta de poupan�a
% adequada podem desejar dividir a sua renda excedente entre poupan�a e
% a��es (combina��o).
%
% A adequa��o entre poupan�a e renda � determinada pelo n�mero de
% descendentes que um indiv�duo mant�m. Pela nossa regra, para uma
% poupan�a adequada, o indiv�duo deve ter no m�nimo R$5.000,00 no banco
% para cada dependente. Uma renda adequada deve ser est�vel e fornecer ao
% menos R$15.000,00 ao ano, mais um adicional de R$4.000,00 por cada
% dependente.

%Dada a descri��o acima, execute as seguintes tarefas:

% 1 - Fa�a um programa em Prolog para implementa��o do consultor
% financeiro.
%Lembre-se das regras para recomenda��o de investimento.
%conta de poupan�a inadequada -> poupan�a;
%conta de poupan�a adequada e uma renda adequada -> a��es;
%renda pequena e conta de poupan�a adequada -> poupan�a e a��es

% 2 - Realize uma consulta em Prolog para a pergunta: Qual deve ser o
% investimento recomendado para um investidor que possui uma quantia
% poupada de R$22.000,00, uma renda est�vel de R$25.000,00 ao ano, e tr�s
% dependentes?
