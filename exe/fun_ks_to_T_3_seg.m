function T_cell_array=fun_ks_to_T_3_seg(k,s,fai)
    
    syms k1 s1 fai1
    % ��������׵ľ���
%     load('T_paper.mat')
%     T_1=eval(subs(T_paper,[k1,s1,fai1],[k,s/3,fai]));
%     T_2=eval(subs(T_paper,[k1,s1,fai1],[k,s*2/3,fai]));
%     T_3=eval(subs(T_paper,[k1,s1,fai1],[k,s,fai]));
    
    % ��������Լ��ľ���
    % �Ժ���ֻע�ͣ���ɾ��
    
    % �������������
    load('ver_Homo_1_sec_ks.mat')
    Homo_n_sec_ks=ver_Homo_1_sec_ks;
    T_1=eval(subs(Homo_n_sec_ks,[k1,s1,fai1],[k,s/3,fai]));
    T_2=eval(subs(Homo_n_sec_ks,[k1,s1,fai1],[k,s*2/3,fai]));
    T_3=eval(subs(Homo_n_sec_ks,[k1,s1,fai1],[k,s,fai]));
    T_cell_array={T_1,T_2,T_3};

end