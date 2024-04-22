% Çó jacobian_f1
clc
clear

syms k s fai  

theta1=fai;
theta2=k*s/2;
d3=2/k*sin(k*s/2);
theta4=k*s/2;
theta5=-fai;


jacobian_f1_ks=jacobian([theta1,theta2,d3,theta4,theta5], [fai,k,s]);
jacobian_f1_ks=simplify(jacobian_f1_ks);

ver_J_f1_ks=jacobian_f1_ks;
save ver_J_f1_ks ver_J_f1_ks
% mupad




