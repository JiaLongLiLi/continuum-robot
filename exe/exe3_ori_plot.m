% 这个就是用来将前面的结果进行画图
% 备注：
% 那个误差稍微可以大一点无所谓 0.5
% 这里尽快结束，线缆从长度都开始随便变了
% 注意这里只保存最后结果，使用了solver2 没有中间迭代过程
% 尽量加注释，不删除

% 代办
% 修改：现在是从2开始

clc
clear
% Homo_db_cell=cell(1,dot_number);
% 我的 3 0 -15 

% 根据给定的homo矩阵 求解每段的驱动长度
    load('ver_exe2_destination.mat')
    destination=ver_exe2_destination;
    load('ver_exe2_result_1.mat')
 
%     load('ver_exe2_result_2.mat')
% 
%     load('ver_exe2_result_3.mat')
% 
%     load('ver_exe2_result_4.mat')
 
%     result=[ver_exe2_result_1;ver_exe2_result_2...
%         ;ver_exe2_result_3;ver_exe2_result_4];
    result=[ver_exe2_result_1];
    
   
    homo_sec_seg_data=fun_get_T_use_L_3_sec(result);
    fun_plot_3_sec_3_seg(homo_sec_seg_data,destination);







