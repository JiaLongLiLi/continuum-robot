% �������������ǰ��Ľ�����л�ͼ
% ��ע��
% �Ǹ������΢���Դ�һ������ν 0.5
% ���ﾡ����������´ӳ��ȶ���ʼ������
% ע������ֻ�����������ʹ����solver2 û���м��������
% ������ע�ͣ���ɾ��

% ����
% �޸ģ������Ǵ�2��ʼ

clc
clear
% Homo_db_cell=cell(1,dot_number);
% �ҵ� 3 0 -15 

% ���ݸ�����homo���� ���ÿ�ε���������
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







