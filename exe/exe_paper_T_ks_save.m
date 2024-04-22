clc
clear
syms fai k s
syms fai1 k1 s1

cc=(cos(k*s)-1);
t1=cos(fai)^2*cc+1;
t2=sin(fai)*cos(fai)*cc;
t3=cos(fai)*sin(k*s);
t4=-cos(fai)*cc/k;

t5=sin(fai)*cos(fai)*cc;
t6=-cos(fai)^2*cc+cos(k*s);
t7=sin(fai)*sin(k*s);
t8=-sin(fai)*cc/k;
t9=-cos(fai)*sin(k*s);
t10=-sin(fai)*sin(k*s);
t11=cos(k*s);
t12=sin(k*s)/k;
tt=[0,0,0,1];

T_paper=[t1,t2,t3,t4;
    t5,t6,t7,t8;
    t9,t10,t11,t12;
    tt]
T_paper=subs(T_paper,[k,s,fai],[k1,s1,fai1]);
ver_T_paper=T_paper;
save ver_T_paper ver_T_paper


















