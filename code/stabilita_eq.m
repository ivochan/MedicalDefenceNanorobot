% Verifica della stabilita' del sistema dinamico non lineare
% nell'intorno del punto di equilibrio x_eq
% utilizzando il criterio di Lyapunov ridotto
%% calcolo degli autovalori della matrice A
[ eig_vectors , eig_values ]= eig(A);
% dalla matrice degli autovalori si estrae la diagonale principale, 
% che e' quella che effettivamente contiene gli autovalori
autovalori_A = diag(eig_values);
% si conclude che due dei quattro autovalori sono radici reali negative
% (convergono asintoticamente a zero) e due di questi sono radici nulle
% (sono limitati se mg = 1)
% quindi con il criterio di Lyapunov ridotto non si puo' concludere nulla
%% polinomio caratteristico della matrice A
p_A = poly(A); %vettore dei coefficienti
% poly(A) restituisce i coefficienti del polinomio caratteristico
% 1*s^4 + 8.7462*s^3 + 19.1240*s^2 + 0*s + 0
% il polinomio caratteristico si ottiene come p = det(sI-A)
roots_p_A = roots(p_A);
%% ordine della matrice A
[nA, mA] = size(A); %(4 x 4)e' una matrice quadrata
%% molteplicita' algebrica di lambda12 ed lambda34
% ma = 2 % annullano due volte ciascuno il polinomio caratteristico
%% molteplicita' geometrica di lambda12 ed lambda34 
% mg = n(A) - rank(M) = 4 - 2 = 2
% dove M e' la matrice A valutata in corrispondenza di eig12 ed eig34
%% il sistema non e' stabile (semplicemente) 
% perche' l'autovalore a parte reale nulla con m.a. = 2 
% ha m.g. = 2 > 1 
% si verifica la molteplicita' algebrica e geometrica soltanto per 
% gli autovalori a parte reale nulla, cioe' lambda = 0
% questa si pyo' calcolare come ordine(A) - rango(lambdaI -A)
% in questo caso e' 2. Verifica:
% lambda = 0;
% lambdaI = lambda*eye(4)
% ma_lambda = length(A) - rank(A - lambdaI)
