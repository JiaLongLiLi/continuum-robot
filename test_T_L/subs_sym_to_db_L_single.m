function matrix_db=subs_sym_to_db_L_single(Homo_n_sec_L,L1)

    syms La1 Lb1 Lc1
    % ����n=�� �����ؽ����ı�������  Homo_n_sec_L

    Homo_n_sec_L=subs(Homo_n_sec_L,[La1,Lb1,Lc1],L1);
    
    matrix_db=eval(Homo_n_sec_L);

end