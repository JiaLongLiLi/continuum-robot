% 通过k s fai的矩阵得到三节三段连续体机器人的工作空间
clc
clear
% k=0.0286;
s=7.001;
iter=1;
for k=0.03:0.03:0.18
    for fai=0:pi/10:2*pi
        T_cell_array=cell(1,9); 
        T_final_array=cell(1,9);
        T_cell_array(1,[1,2,3])=fun_ks_to_T_3_seg(k,s,fai);
        T_cell_array(1,[4,5,6])=fun_ks_to_T_3_seg(k,s,fai);
        T_cell_array(1,[7,8,9])=fun_ks_to_T_3_seg(k,s,fai);
        
        T_final_array(1,[1,2,3])=T_cell_array(1,[1,2,3]);
        T_final_array{iter,4}=T_cell_array{iter,3}*T_cell_array{iter,4};
        T_final_array{iter,5}=T_cell_array{iter,3}*T_cell_array{iter,5};
        T_final_array{iter,6}=T_cell_array{iter,3}*T_cell_array{iter,6};
        
        T_final_array{iter,7}=T_final_array{iter,6}*T_cell_array{iter,7};
        T_final_array{iter,8}=T_final_array{iter,6}*T_cell_array{iter,8};
        T_final_array{iter,9}=T_final_array{iter,6}*T_cell_array{iter,9};
        
        homo_sec_seg_data=T_final_array;

        fun_plot_3_sec_3_seg(homo_sec_seg_data,[0,0,0])

    end
end