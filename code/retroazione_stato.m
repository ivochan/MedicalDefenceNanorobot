% script che realizza un regolatore per il sistema dinamico
% essendo completamente raggiungibile si puo' scegliere
% come legge di controllo la reotrazione dello stato
function [K, prec] = retroazione_stato(A,B,p)
%% calcolo della matrice di retroazione
% place -> sistemi mimo
% calcola i guadagni K a ciclo chiuso ottenuti
% per il valore dei poli ricevuti in ingresso 
[K, prec] = place(A, B, p);
% - K e' la matrice dei guadagni
% - prec e' una stima di quanto gli autovalori della matrice A-BK si 
%   avvicinino ai poli desiderati
% - p e' il vettore dei poli che si desiderano per la fdt a ciclo chiuso
%% calcolo degli autovalori della matrice
% affinche' la legge di controllo u(t) = -Kx(t) funzioni 
% devono essere tutti stabili, ovvero a parte reale negativa
eig_state = eig(A-B*K);






