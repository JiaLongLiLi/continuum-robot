% ����������һ����
% Ҫ���� n_section �� T Ȼ����solver ����L
clc
clear

n_section=3;
% ����� �����L1  L2 ���ǲ������볬��8����������L���ﲻ��ȥ���������
L1_db=[7.1, 4.01, 10.001];
L2_db=[8.1, 7.01, 6.001];
L3_db=[8.1, 7.01, 6.001];
% L_center=7; %�м䲻�������˵ĳ���

load('ver_Homo_3_sec_L.mat')  
Homo_n_sec_L=ver_Homo_n_sec_L;
Homo_db=fun_subs_sym_to_db_L(Homo_n_sec_L,L1_db,L2_db,L3_db);


destination=Homo_db(1:3,4)
% ���ݸ�����homo���� ���ÿ�ε���������
ver_exe_result=fun_solver(Homo_db);


% ������Ҫ������
save ver_exe_result ver_exe_result

% ��ʼ��ͼ
load ver_exe_result
homo_sec_seg_data=fun_get_T_use_L_3_sec(ver_exe_result);
fun_plot_3_sec_3_seg(homo_sec_seg_data,destination);






