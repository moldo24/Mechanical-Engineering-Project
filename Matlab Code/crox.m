%1.Numarul de dinti 
z1 = 12 
z2 = 65 
%calcule cruce de malta 
%Numarul de antrenori 
na = 2; 
%Numarul de canale 
z = 3; %Turatia 
%numarul de ordine i 
i = 18; 
%turatia motorului de antrenare 
ni = (44 + 7*i)*10 
% n1/n2 = w1/w2 = -z2/z1 
% turatia motorului (ni) este egala cu n1 
n1=ni; 
n2 = n1*z1/z2; 
% n3 = turatia antrenorului 
n3=n2; 
% 1.Viteza unghiulara a elementului conducator 
w1 = pi*n2/30 
% 2.Constanta mecanismului 
lambda = sin(pi/z) 
% 3.Lungimea bratului de antrenare (R1<L) 
L=0.04; %metri 
R1=L*sin(pi/z) 
% 4.Timpul de miscare in care elementul conducator antreneaza elementulcondus 
tm = 2*pi*(1/2-1/z)/w1 
% 5.Timpul de repaus al elementului condus 
tr = 2*pi*(1/2 + 1/z)/w1 
%6.Timpul de rotatie completa a elementului conducator 
T = tm+tr 
% 7.Coeficientul de miscare 
km = 1/2 - 1/z 
% 8.Coeficientul de repaus 
kr = 1/2 + 1/z 
% 9.Coeficientul timpului de lucru al mecanismului k 
k = (z-2)/(z+2) 
% 10.Viteza unghiulara maxima a elementului condus 
w2max = w1*(lambda/(1-lambda)) 
