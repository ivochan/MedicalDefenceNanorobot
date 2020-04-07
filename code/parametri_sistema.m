%% Modello di Nanorobot nel sangue per scopo diagnostico
% Equazioni (non lineari) che descrivono il sistema:
% 1) xpp = (-Fr*(xp-vf))/m + (Fm/m)*cos(alpha)
% 2) ypp = (-Fr/m)*yp + (Fm/m)*sin(alpha)
%% Parametri del fluido
% Il sangue viene trattato come un fluido di tipo Newtoniano.
% La velocita' vf del fluido si assume di tipo parabolico e massima al 
% centro del vaso sanguigno. Il suo valore descresce fino ad annullarsi
% in prossimita' delle pareti del condotto stesso. 
eta = 0.00116; % viscosita' del fluido [Pa*s]
% vf = (deltaP/(4*eta*l))*(r^2-y^2); % velocita' a cui scorre il fluido
vf = 0; % velocità a cui scorre il sangue
% nel condotto
%% Parametri del condotto
% Il vaso sanguigno viene modellato come un condotto di sezione circolare.
l = 90*10^-6; % lunghezza del condotto [m]
dP = 0.5; % differenza di pressione ai capi del condotto [Pa]
r = 50*10^-5; % raggio della sezione circolare del condotto [m]
%% Parametri del nanorobot
% Il robot viene approssimato come un corpo sferico di raggio R. 
R = 10^-7; % raggio [m]
Fm = 1.4*10^-12; % forza motrice del robot Fm>0 [N]
m = 5*10^-10; %massa del robot [Kg]
% v = la velocita' a cui si muove il robot, in termini di derivata di coordinate x ed y;
% alpha = angolo che definisce la direzione del moto del robot (INGRESSO)
%% Forze agenti sul robot
Fr = 6*pi*eta*R; % forza che ostacola il moto del robot, soprattuto a causa
% della viscosita' del fluido.
% fd = la forza del disturbo che agisce sul robot
%% Sistema di riferimento x-y
% x(t) e y(t) rappresentano la posizione del baricentro del robot, nel 
% piano cartesiano, al variare del tempo
% d e' la misura della distanza del centro di massa del robot,
% dall'origine del sistema di riferimento, dove
% d = sqrt(x^2 + y^2) (USCITA)
%% Parametri complessivi del sistema dinamico
% vettore che contiene i dati
dati = [ R, Fm, m, eta,l, dP, r, vf ];
%% Condizioni iniziali
input = [0,0,0,0];
%% Ingressi del sistema
alpha = rad2deg(0);
fd = 0;
