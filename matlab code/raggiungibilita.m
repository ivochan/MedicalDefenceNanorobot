%% Funzione che verifica la proprieta' di raggiungibilita' del sistema
% Un sistema si definisce completamente raggiungibile se
% il rango della matrice di raggiungibilita' e' pieno
function R = raggiungibilita(A, B)
%% calcolo della matrice di raggiungibilita' R
% Controllability matrix
R = ctrb(A,B); 
%% calcolo del rango di R
rango_R = rank(R); % rango_R = 4
% dimensioni della matrice R 
[nR,mR] = size(R); % (4 x 8) <- (n x np) dove p e' la dimensione di u
% si calcola il numero degli stati non raggiungibili per verifica
x_non_R = length(A) - rank(R); % x_non_R = 0
% controllo della presenza di stati non raggiungibili
if x_non_R == 0
    disp('Sistema completamente raggiungibile')
else 
    disp('Sistema non raggiungibile')
end
% dove lengh(A) e' l'ordine della matrice quadrata A
% il rango della matrice O e' uguale all'ordine della matrice A
% allora si puo' concludere che il sistema sia completamente
% raggiungibile e di conseguenza completamente controllabile
