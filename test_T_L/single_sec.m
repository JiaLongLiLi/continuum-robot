%
% Ҫ���� n_section �� T Ȼ����solver ����L
clc
clear

n_section=1;
% ����� �����L1  L2 ���ǲ������볬��8
% L1_db=[7.01, 7.03, 7.02];

 
load('ver_Homo_1_sec_L.mat')

Homo_n_sec_L=ver_Homo_n_sec_L;
%     plot_all(Homo_n_sec_L,L1_db);
% �������� b c �ֳ�����һ�����ң��������������⣬�����ڷ����fai
for L_a=2:0.901:7
    
        L_a
        
        L_c=7.01;
        L_b=7.01+0.001;
        L1_db=[L_a,L_b,L_c];
        plot_all(Homo_n_sec_L,L1_db);
   
end
for L_b=2:0.901:7
    L_b
        
        
        L_a=7.01;
        L_c=7.01+0.001;
        L1_db=[L_a,L_b,L_c];
        plot_all(Homo_n_sec_L,L1_db);
   
end
for L_c=2:0.901:7
    
        
        
        L_a=7.01;
        L_b=7.01+0.001;
        L1_db=[L_a,L_b,L_c];
        plot_all(Homo_n_sec_L,L1_db);
   
end
axis equal






