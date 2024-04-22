clc
clear
close all

% ----------------------------------------------------------
% 建立 n section 的jacobian 和 homogeneous translation matrix
% 都是关于 L（长度）
% 改程序一定记得把保存文件save注释
% 最终要保存的变量
    % T 关于ks/theta/L  1节/3节 3X2 = 6
    % J 关于L
% ----------------------------------------------------------

% 这里的问题：jacobian：有一点理论问题

number_section=1;

syms theta_pi_2_sym
syms La1 Lb1 Lc1
syms k1 s1 fai1
syms L1 L2 L3

global theta_pi_2
theta_pi_2=theta_pi_2_sym;

% 先初始化一个cell 将cell_DH_para_array填满初始数据
cell_DH_para_array=fun_DH_para_init_data(number_section);

% 将 homogeneous translation matrix 相对{0} 放入cell
cell_HomoTran_array=fun_DH_para_to_T_of_theta(cell_DH_para_array);

% 根据homogeneous translation 产生 Jacobian
Jacobian_DH_n_sect_theta=fun_T_to_Jaco_of_theta(cell_HomoTran_array,cell_DH_para_array);
% load('ver_Jacobian_DH_n_sect_theta.mat')
% Jacobian_DH_n_sect_theta=ver_Jacobian_DH_n_sect_theta;


% 停下来验证一下 n=1是否正确:一模一样

% 将jacobian的DH（目前是关于theta） ，替换为L的
Jacb_DH_n_sect_ks=fun_theta_to_ks(Jacobian_DH_n_sect_theta);
Jacb_DH_n_sect_L=fun_ks_to_L(Jacb_DH_n_sect_ks);

% jacobian 的 f1 关于L
Jacb_f1_n_sect_ks=fun_make_Jacb_f1(number_section);

% 将jacobian的f1（目前是关于ks） ，替换为L的
Jacb_f1_n_sect_L=fun_ks_to_L(Jacb_f1_n_sect_ks);

% jacobian 的 f2 关于L
Jacb_f2_n_sect_L=fun_make_Jacb_f2(number_section);

% 最终的jacobian
J_n_sec_final=Jacb_DH_n_sect_L*Jacb_f1_n_sect_L*Jacb_f2_n_sect_L;

% 保存位姿变换矩阵 这个矩阵是关于θ的，换成L的
Homo_n_sec_ks=fun_theta_to_ks(cell_HomoTran_array{end});
Homo_n_sec_L=fun_ks_to_L(Homo_n_sec_ks);

Homo_1_sec_theta=cell_HomoTran_array{end};


% 保存数据 这个只有在1节的时候用来测试
% ver_Homo_1_sec_theta=Homo_1_sec_theta;
% save ver_Homo_1_sec_theta ver_Homo_1_sec_theta
% 
ver_Homo_1_sec_ks=Homo_n_sec_ks;
save ver_Homo_1_sec_ks ver_Homo_1_sec_ks

% 注意下面这两个的命名 这两个是三节用
% ver_Homo_n_sec_L=Homo_n_sec_L;
% save ver_Homo_3_sec_L ver_Homo_n_sec_L
% 
% ver_J_n_sec_final=J_n_sec_final;
% save ver_J_3_sec_final ver_J_n_sec_final





