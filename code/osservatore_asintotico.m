%% progettazione dell'osservatore asintotico
% detto anche  ricostruttore o stimatore di stato.
% puo' essere realizzato poiche' il sistema
% e' completamente osservabile
% q vettore dei poli scelti per la progettazione
L = place(A',C', q)';
% calcolo degli autovalori
autovalori_O = eig(A-L*C);
% calcolo della stima della matrice A 
AO = A - L*C;
% calcolo della stima della matrice B   
BO = [B L];
% calcolo della stima della matrice C 
CO = eye(4);
% calcolo della stima della matrice D   
DO = zeros(4,4); % 4 righe per A, 4 colonne per i due ingressi ed L
% sistema ottenuto dalla stima dello stato
sistema_osservato = ss(AO,BO,CO,DO);
