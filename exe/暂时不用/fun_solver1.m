function result=fun_solver1(Homo_db)
    
% 结果包含配置: 1)原始配置 2)过程中迭代配置
% 首先选配置
% 包括：jacobian T L_temp的维度

load('Homo_2_sec_L.mat')  
load('J_2_sec_final.mat')

% Homo_n_sec_L=subs(Homo_n_sec_L,[La1,Lb1,Lc1],L1);
% Homo_n_sec_L=subs(Homo_n_sec_L,[La2,Lb2,Lc2],L2);


T_target=Homo_db;
L_temp=[7.1, 5.9, 8, 7.1, 5.9, 8]';


T_6_0_L_doub_temp=eye(4,4);
i_test=0;
result=L_temp';
while sum(sum( abs(T_6_0_L_doub_temp-T_target)))>0.005
    
    J_double=fun_subs_sym_to_db_L(J_n_sec_final,L_temp(1:3)',L_temp(4:6)',zeros(1,3));
    
    J_pinv = pinv( J_double );
    
    T_6_0_L_doub_temp=subs_sym_to_db_L(Homo_n_sec_L,L_temp(1:3)',L_temp(4:6)',zeros(1,3))
    R_dot = (T_target(1:3,1:3) - T_6_0_L_doub_temp(1:3,1:3) );
    S_w = R_dot/T_6_0_L_doub_temp(1:3,1:3);
    V_w = [S_w(3,2),S_w(1,3),S_w(2,1)]';
    dert_T=T_target-T_6_0_L_doub_temp;
    V_v = dert_T(1:3,4);
    V_all=[V_v;V_w];
    
    L_temp = L_temp+J_pinv * V_all
    summ=sum(L_temp)
    result=[result;L_temp'];
    
    i_test=i_test+1
    
end

end