function plot_all(Homo_n_sec_L,L1_db)


Homo_db=subs_sym_to_db_L_single(Homo_n_sec_L,L1_db);

destination=Homo_db(1:3,4);

% ¿ªÊ¼»­Í¼
result=L1_db;
homo_sec_seg_data=homo_sec_seg_single(result);
plot_3_sec_3_seg_single(homo_sec_seg_data,destination);

end