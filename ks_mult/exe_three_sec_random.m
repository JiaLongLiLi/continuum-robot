% 专门做一个测试ksfai得到位姿矩阵的
clc
clear
% k=0.0286;
s=7.001;
iter=1;
k1=0.08;
k2=0.17;
k3=0.06;
fai1=pi/2;
fai2=pi/2;
fai3=pi/20;
        T_cell_array=cell(1,9); 
        T_final_array=cell(1,9);
        T_cell_array(1,[1,2,3])=fun_ks_to_T_3_seg(k1,s,fai1);
        T_cell_array(1,[4,5,6])=fun_ks_to_T_3_seg(k2,s,fai2);
        T_cell_array(1,[7,8,9])=fun_ks_to_T_3_seg(k3,s,fai3);
        
        T_final_array(1,[1,2,3])=T_cell_array(1,[1,2,3]);
        T_final_array{iter,4}=T_cell_array{iter,3}*T_cell_array{iter,4};
        T_final_array{iter,5}=T_cell_array{iter,3}*T_cell_array{iter,5};
        T_final_array{iter,6}=T_cell_array{iter,3}*T_cell_array{iter,6};
        
        T_final_array{iter,7}=T_final_array{iter,6}*T_cell_array{iter,7};
        T_final_array{iter,8}=T_final_array{iter,6}*T_cell_array{iter,8};
        T_final_array{iter,9}=T_final_array{iter,6}*T_cell_array{iter,9};
        

        
        homo_sec_seg_data=T_final_array;

        fun_plot_3_sec_3_seg(homo_sec_seg_data,[0,0,0])
