%1.Numarul de dinti 
z1 = 12 
z2 = 65 
%numarul de ordine  i 
i = 18; 
%turatia motorului de antrenare
ni = (44 + 7*i)*10 
% n1/n2 = w1/w2 = -z2/z1 
% turatia motorului (ni) este egala cu n1 
n1=ni; n2 = n1*z1/z2; 
% Viteza unghiulara a elementului conducator 
w1 = pi*n2/30 
% Constanta mecanismului 
lambda = sin(pi/z) 
 
phi1 = -pi/2:0.01:pi/2;
%unghiul de rotatie al antrenorului  
for i=1:length(phi1)
    phi2(i) = atan((lambda*sin(phi1(i)))/(1-lambda*cos(phi1(i)))); 
    eps2(i) = -((lambda*(1-lambda^2)*sin(phi1(i)))/((12*lambda*cos(phi1(i))+lambda^2)^2))*w1^2;
    w2(i) = (lambda*(cos(phi1(i))-lambda)/(1-2*lambda*cos(phi1(i))+lambda^2))*w1;
end 
 
%diagramele de variatie plot(phi1,phi2)
plot(phi1,phi2); grid; xlabel('\phi_1'); ylabel('\phi_2=f(\phi_1)'); title('Unghiul de rotatie'); 
figure; plot(phi1,eps2); grid; xlabel('\phi_1'); 
ylabel('\epsilon_2=f(\phi_1)[rad/s]'); title('Viteza unghiulara'); figure;  
plot(phi1,w2); grid; xlabel('\phi_1');
ylabel('\omega_2=f(\phi_1)[rad/s]'); title('Acceleratia unghiulara'); 
 
