function T_cell_array=homo_ks_3_segm(k,s,fai)
    
    syms k1 s1 fai1
%     load('Homo_1_sec_ks.mat')
    load('ver_Homo_1_sec_ks.mat')
    Homo_n_sec_ks=ver_Homo_1_sec_ks;
    T_1=eval(subs(Homo_n_sec_ks,[k1,s1,fai1],[k,s/3,fai]));
    T_2=eval(subs(Homo_n_sec_ks,[k1,s1,fai1],[k,s*2/3,fai]));
    T_3=eval(subs(Homo_n_sec_ks,[k1,s1,fai1],[k,s,fai]));
    
    T_cell_array={T_1,T_2,T_3};

end