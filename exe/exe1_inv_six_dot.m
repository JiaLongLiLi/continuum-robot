% 这里是逆向到6个点：连续点
% 要定义 n_section 和 T 然后用solver 求解出L

% 那个误差稍微可以大一点无所谓 0.05
% 误差记得该回来

clc
clear

dot_number=6;
Homo_db_cell=cell(1,dot_number);
for i=dot_number:-1:1
    L1_db=[7+i*0.81, 7.003-i*0.81, 7-0.003];
    L2_db=[4.5+0.47*i, 6.6-0.47*i, 9.9];
    L3_db=[4.4+0.7*i, 9.4-1.1*i, 7.2+0.4*i];
    % L_center=7; %中间不可伸缩杆的长度

    load('ver_Homo_3_sec_L.mat')  
    Homo_n_sec_L=ver_Homo_n_sec_L;
    Homo_db_cell{dot_number-i+1}=...
    fun_subs_sym_to_db_L(Homo_n_sec_L,L1_db,L2_db,L3_db);
end

for i=1:dot_number
    i
    Homo_db=Homo_db_cell{i};
    destination=Homo_db(1:3,4);

    % 根据给定的homo矩阵 求解每段的驱动长度
    
    result=fun_solver(Homo_db);

    homo_sec_seg_data=fun_get_T_use_L_3_sec(result);
    fun_plot_3_sec_3_seg(homo_sec_seg_data,destination);
end






