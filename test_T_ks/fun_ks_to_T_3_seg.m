function T_cell_array=fun_ks_to_T_3_seg(k,s,fai)
    
    % 
    syms k1 s1 fai1
    
    % choice 1
%     load('ver_T_paper.mat')

    % choice 2
    load('ver_Homo_1_sec_ks.mat')
    T_paper=ver_Homo_1_sec_ks;
    
    
    T_1=eval(subs(T_paper,[k1,s1,fai1],[k,s/3,fai]));
    T_2=eval(subs(T_paper,[k1,s1,fai1],[k,s*2/3,fai]));
    T_3=eval(subs(T_paper,[k1,s1,fai1],[k,s,fai]));
    
    T_cell_array={T_1,T_2,T_3};

end