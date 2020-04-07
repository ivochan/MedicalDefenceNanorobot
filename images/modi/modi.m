%plot dei modi di evoluzione del sistema
t = linspace(0,1,300);
% vettore degli autovalori
lambda1 = autovalori_A(1); %lambda1
lambda2 = autovalori_A(3); %lambda2
lambda3 = autovalori_A(2); %lambda3
lambda4 = autovalori_A(4); %lambda4
% modi di evoluzione del sistema
f1 = exp(lambda1*t);
f2 = t.*exp(lambda2*t);
f3 = exp(lambda3*t);
f4 = t.*exp(lambda4*t);
% grafico lambda1 
figure(1)
plot(t,f1,'r')
title('Modo del sistema associato a lambda1')
grid on
% grafico lambda2 
figure(2)
plot(t,f2,'r')
title('Modo del sistema associato a lambda2')
grid on
% grafico lambda3 
figure(3)
plot(t,f3,'r')
title('Modo del sistema associato a lambda3')
grid on
% grafico lambda4 
figure(4)
plot(t,f4,'r')
title('Modo del sistema associato a lambda4')
grid on

