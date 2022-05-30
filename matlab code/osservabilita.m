%% funzione che verifica la proprieta' di osservabilita' del sistema
% Un sistema si definisce completamente osservabile se
% il rango della matrice di osservabilita' e' pieno
function O = osservabilita(A, C)
%% calcolo della matrice di osservabilita' O
% Observability matrix
O = obsv (A,C);
%% calcolo del rango di O
rango_O = rank(O); % rango_O = 4
% dimensioni della matrice 
[nO,mO] = size(O); % (8 x 4)
% si calcola il numero degli stati non raggiungibili per verifica
x_non_O = length(A) - rank(O); % x_non_O = 0
% il rango della matrice O e' uguale all'ordine della matrice A
if x_non_O == 0
    disp('Sistema completamente osservabile')
else 
    disp('Sistema non osservabile')
end
% allora si puo' concludere che il sistema sia completamente osservabile e
% di conseguenza completamente ricostruibile
