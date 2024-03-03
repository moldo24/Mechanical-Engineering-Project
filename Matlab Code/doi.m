%1.Numarul de dinti
z1 = 12;
z2 = 65 ;
%2.Coeficientii de deplasare a profilurilor
x1 = 0.64;
x2 = 1.00 ;
%3.Modulul 
m=3;
%4.Unghiul de angrenare
inva0 = 0.01490;
%involut de alfa0 
alfa0 = 20*pi/180;
%20 de grade -> radiani
invalfa = inva0+(2*(x1+x2)*tan(alfa0))/(z1+z2) ;
%5.Coeficientul de modificare a distantei dintre axe 
alfa=25.11133*pi/180 ;
y = ((z1+z2)/2)*((cos(alfa0)/cos(alfa))-1) ;
%6.Distanta axiala 
a = m*(z1+z2)*cos(alfa0)/(2*cos(alfa)) ;
%7.Coeficientul de scurtare a inaltimii dintilor 
psi = x1+x2-y;
%8.Inaltimea dintilor
h = m*(2.25-psi)
%9.Diametrul cercurilor de divizare 
d1 = m*z1; r1 = d1/2; 
d2 = m*z2; r2 = d2/2; 
%10.Diametrul cercurilor de baza
db1 = m*z1*cos(alfa0) 
db2 = m*z2*cos(alfa0) 
rb1 = db1/2;
rb2 = db2/2; 
%11.Diametrul cercurilor de rostogolire 
dw1 = m*z1*cos(alfa0)/cos(alfa)
rw1 = dw1/2; 
dw2 = m*z2*cos(alfa0)/cos(alfa)
rw2 = dw2/2; 
%12.Diametrul cercurilor de cap 
da1 = m*(z1+2+2*x1-2*psi)
ra1 = da1/2; 
da2 = m*(z2+2+2*x2-2*psi)
ra2 = da2/2; 
%13.Diametrul cercurilor de picior 
df1 = m*(z1-2+2*x1-0.5) 
rf1 = df1/2; 
df2 = m*(z2-2+2*x2-0.5) 
rf2 = df2/2; 
%14.Arcele dintilor pe cercurile de divizare 
s1 = pi*m/2 + 2*m*x1*tan(alfa0)
s2 = pi*m/2 + 2*m*x2*tan(alfa0) 
%15.Gradul de acoperire
E = (sqrt(ra2^2 - rb2^2) + sqrt(ra1^2-rb1^2)- a*sin(alfa))/(pi*m*cos(alfa0)) 











