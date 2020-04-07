% costruzione del sistema linearizzato
% nell'intorno del punto di equilibrio
% a partire dal sistema dinamico non lineare
% input: sistema fisico modellato su Simulink, 
%        u_eq ingresso di equilibrio,
%        x_eq stato di equilibrio;
% output: matrici del sistema linearizzato
%% Punto di equilibrio del sistema
% ottenuto con la funzione trim sul modello non lineare
% Stato di equilibrio
x_eq = [0,0,0,0]'; 
% valore dell'angolo alpha all'equilibrio
alpha_eq = 0; 
% valore della forza di disturbo che agisce sul robot all'equilibrio
fd_eq = 0; 
% Ingressi di equilibrio
u_eq = [alpha_eq, fd_eq];
%% Calcolo del modello linearizzato
[A, B, C, D] = linmod('nanorobot_non_lineare',x_eq, u_eq);
% uscita sistema lineare
y_eq = C*x_eq;
% dove x = y_eq(1) , y = y_eq(2)
