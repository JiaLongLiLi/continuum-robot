% 通过k s fai的矩阵得到单节三段连续体机器人的工作空间
clc
clear
% k=0.0286;
s=7.001;

for k=0.03:0.05:0.18
    
    for fai=0:pi/10:2*pi

        T_cell_array=cell(1,3); 
        T_final_array=cell(1,3);
        T_cell_array(1,[1,2,3])=fun_ks_to_T_3_seg(k,s,fai);


        T_final_array(1,[1,2,3])=T_cell_array(1,[1,2,3]);
        homo_sec_seg_data=T_final_array(1,[1,2,3]);

        fun_plot_1_sec_3_seg_single(homo_sec_seg_data,[0,0,0])

    end
end