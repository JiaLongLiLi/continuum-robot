function matrix_db=fun_subs_sym_to_db_L(Homo_n_sec_L,L1,L2,L3)

    syms La1 Lb1 Lc1
    syms La2 Lb2 Lc2
    syms La3 Lb3 Lc3
    % 不论n=几 ，加载进来的变量都叫  Homo_n_sec_L

    Homo_n_sec_L=subs(Homo_n_sec_L,[La1,Lb1,Lc1],L1);
    Homo_n_sec_L=subs(Homo_n_sec_L,[La2,Lb2,Lc2],L2);
    Homo_n_sec_L=subs(Homo_n_sec_L,[La3,Lb3,Lc3],L3); 
    
    matrix_db=eval(Homo_n_sec_L);

end