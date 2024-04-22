function matrix_db=subs_sym_to_db_L_single(Homo_n_sec_L,L1)

    syms La1 Lb1 Lc1
    % 不论n=几 ，加载进来的变量都叫  Homo_n_sec_L

    Homo_n_sec_L=subs(Homo_n_sec_L,[La1,Lb1,Lc1],L1);
    
    matrix_db=eval(Homo_n_sec_L);

end