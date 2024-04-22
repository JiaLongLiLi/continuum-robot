function T=fun_DH_para_to_T(cell_DH_para_array)
global theta_pi_2

a=cell_DH_para_array(1);
aerfa=cell_DH_para_array(2);
d=cell_DH_para_array(3);
theta=cell_DH_para_array(4);

T=[
    cos(theta), -sin(theta)*cos(aerfa), sin(theta)*sin(aerfa),  a*cos(theta);
    sin(theta), cos(theta)*cos(aerfa),  -cos(theta)*sin(aerfa), a*sin(theta);
    0,          sin(aerfa),             cos(aerfa),             d;
    0,          0,                      0,                      1;
    ];
T=subs(T,theta_pi_2,pi/2);
T=simplify(T);
end