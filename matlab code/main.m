%% Nanorobot nel sangue per scopo medico-diagnostico
% script di esecuzione
%% Modellistica
% caricamento dei parametri del sistema dinamico nel workspace
parametri_sistema;
% Sistema non lineare
sim('nanorobot_non_lineare');
% Modello linearizzato
sistema_lineare;

%% Analisi del sistema
% Verifica della stabilita' del sistema in condizioni di equilibrio
stabilita_eq;
% Verifica della raggiungibilita' del sistema
R = raggiungibilita(A,B);
% verifica dell'osservabilita' del sistema
O = osservabilita(A,C);
% vettore delle condizioni iniziali 
% x0 = [0.01,0,0,0];
x0 = [0.1,0,0,0];

%% Sintesi -> Retroazione dello stato
% autovalori della matrice A = [ 0; -4.3731; 0; -4.3731]
% poli da allocare per il controllore, pari in numero all'ordine di A e
% di molteplicita' non superiore al rango di B
p = [-5;-15;-5;-15];
% progettazione del regolatore
K = retroazione_stato(A, B, p);

%% Sintesi -> Osservatore asintotico
% poli da allocare per l'osservatore di stato
% devono essere piu' veloci di quelli scelti per il controllore
q =[-29; -37.5; -27; -35.5];
% progettazione dello stimatore
osservatore_asintotico;

%% Sintesi -> Compensatore dinamico
% utilizzo combinato del regolatore in retroazione di stato
% e dell'osservatore asintotico dello stato
% verifica del dispositivo 
% al variare di diverse perturbazioni
xi = [0.003,0,0,0]; % seconda perturbazione 
% xi = [0.1,0,0,0]; % prima perturbazione
% test con ingresso il gradino e condizioni inziiali x0
sim('compensatore_dinamico_gradino');
