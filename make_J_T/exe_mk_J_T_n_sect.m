clc
clear
close all

% ----------------------------------------------------------
% ���� n section ��jacobian �� homogeneous translation matrix
% ���ǹ��� L�����ȣ�
% �ĳ���һ���ǵðѱ����ļ�saveע��
% ����Ҫ����ı���
    % T ����ks/theta/L  1��/3�� 3X2 = 6
    % J ����L
% ----------------------------------------------------------

% ��������⣺jacobian����һ����������

number_section=1;

syms theta_pi_2_sym
syms La1 Lb1 Lc1
syms k1 s1 fai1
syms L1 L2 L3

global theta_pi_2
theta_pi_2=theta_pi_2_sym;

% �ȳ�ʼ��һ��cell ��cell_DH_para_array������ʼ����
cell_DH_para_array=fun_DH_para_init_data(number_section);

% �� homogeneous translation matrix ���{0} ����cell
cell_HomoTran_array=fun_DH_para_to_T_of_theta(cell_DH_para_array);

% ����homogeneous translation ���� Jacobian
Jacobian_DH_n_sect_theta=fun_T_to_Jaco_of_theta(cell_HomoTran_array,cell_DH_para_array);
% load('ver_Jacobian_DH_n_sect_theta.mat')
% Jacobian_DH_n_sect_theta=ver_Jacobian_DH_n_sect_theta;


% ͣ������֤һ�� n=1�Ƿ���ȷ:һģһ��

% ��jacobian��DH��Ŀǰ�ǹ���theta�� ���滻ΪL��
Jacb_DH_n_sect_ks=fun_theta_to_ks(Jacobian_DH_n_sect_theta);
Jacb_DH_n_sect_L=fun_ks_to_L(Jacb_DH_n_sect_ks);

% jacobian �� f1 ����L
Jacb_f1_n_sect_ks=fun_make_Jacb_f1(number_section);

% ��jacobian��f1��Ŀǰ�ǹ���ks�� ���滻ΪL��
Jacb_f1_n_sect_L=fun_ks_to_L(Jacb_f1_n_sect_ks);

% jacobian �� f2 ����L
Jacb_f2_n_sect_L=fun_make_Jacb_f2(number_section);

% ���յ�jacobian
J_n_sec_final=Jacb_DH_n_sect_L*Jacb_f1_n_sect_L*Jacb_f2_n_sect_L;

% ����λ�˱任���� ��������ǹ��ڦȵģ�����L��
Homo_n_sec_ks=fun_theta_to_ks(cell_HomoTran_array{end});
Homo_n_sec_L=fun_ks_to_L(Homo_n_sec_ks);

Homo_1_sec_theta=cell_HomoTran_array{end};


% �������� ���ֻ����1�ڵ�ʱ����������
% ver_Homo_1_sec_theta=Homo_1_sec_theta;
% save ver_Homo_1_sec_theta ver_Homo_1_sec_theta
% 
ver_Homo_1_sec_ks=Homo_n_sec_ks;
save ver_Homo_1_sec_ks ver_Homo_1_sec_ks

% ע������������������ ��������������
% ver_Homo_n_sec_L=Homo_n_sec_L;
% save ver_Homo_3_sec_L ver_Homo_n_sec_L
% 
% ver_J_n_sec_final=J_n_sec_final;
% save ver_J_3_sec_final ver_J_n_sec_final





