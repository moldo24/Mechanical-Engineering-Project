%numarul de antrenori 
na = 2; 
%Numarul de canale
z = 3;%Turatia 
z1=12;
z2=65;
%numarul de ordine i 
i = 18; 
%turatia motorului de antrenare 
ni = (44 + 7*i)*10 
% n1/n2 = w1/w2 = -z2/z1 
% turatia motorului (ni) este egala cu n1 
n1=ni; n2 = n1*z1/z2; 
%cursa pistonului 
smax=135+i; 
%lungimea manivelei pe lungimea bielei 
lambda1=1/(4.5 + 0.05*i) 
%spatiul -Manivela piston 
l1=smax/2; 
w1 = pi*n2/30 
l2=l1/lambda1;
phi1=0:0.01:2*pi;
for i=1:length(phi1) 
sB(i)=l1.*((1/lambda1)-((1/4).*lambda1)+cos(phi1(i)) + ((1/4).*lambda1.*cos(2.*phi1(i)))); 
vB(i)=-l1.*w1.*(sin(phi1(i))+(1/2).*lambda1.*sin(2.*phi1(i))); aB(i)=-l1.*(w1.^2).*(cos(phi1(i)) +lambda1.*cos(2.*phi1(i))); 
end 
 figure; 
plot(phi1,sB); grid; xlabel('\phi_1'); title('Spatiul'); 
ylabel('sB=f(\phi_1)'); figure; 
plot(phi1,vB); grid; xlabel('\phi_1'); title('Viteza'); 
ylabel('vB=f(\phi_1)'); figure; 
plot(phi1,aB); grid; xlabel('\phi_1'); title('Acceleratia'); 
ylabel('aB=f(\phi_1)');  
