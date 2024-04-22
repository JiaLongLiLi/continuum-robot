% 这里是逆向到一个点
% 要定义 n_section 和 T 然后用solver 求解出L
clc
clear

n_section=3;
% 真奇怪 这里的L1  L2 就是不能输入超过8，否则逆向L到达不回去，但点可以
L1_db=[7.1, 4.01, 10.001];
L2_db=[8.1, 7.01, 6.001];
L3_db=[8.1, 7.01, 6.001];
% L_center=7; %中间不可伸缩杆的长度

load('ver_Homo_3_sec_L.mat')  
Homo_n_sec_L=ver_Homo_n_sec_L;
Homo_db=fun_subs_sym_to_db_L(Homo_n_sec_L,L1_db,L2_db,L3_db);


destination=Homo_db(1:3,4)
% 根据给定的homo矩阵 求解每段的驱动长度
ver_exe_result=fun_solver(Homo_db);


% 保存需要的数据
save ver_exe_result ver_exe_result

% 开始画图
load ver_exe_result
homo_sec_seg_data=fun_get_T_use_L_3_sec(ver_exe_result);
fun_plot_3_sec_3_seg(homo_sec_seg_data,destination);






