function result=fun_solver(Homo_db)

% 结果包含配置: 最终配置
% 首先选配置
% 包括：jacobian T L_temp的维度

load('ver_Homo_3_sec_L.mat')  
load('ver_J_3_sec_final.mat')
Homo_n_sec_L=ver_Homo_n_sec_L;
J_n_sec_final=ver_J_n_sec_final;


% Homo_n_sec_L=subs(Homo_n_sec_L,[La1,Lb1,Lc1],L1);
% Homo_n_sec_L=subs(Homo_n_sec_L,[La2,Lb2,Lc2],L2);


T_target=Homo_db;
L_temp=[7.1, 5.9, 8, 7.1, 5.9, 8, 7.1, 5.9, 8]';


T_6_0_L_doub_temp=eye(4,4);
i_test=0;

% 这里误差大一点也可以
while sum(sum( abs(T_6_0_L_doub_temp-T_target)))>0.5
    
    J_double=fun_subs_sym_to_db_L(J_n_sec_final,L_temp(1:3)',L_temp(4:6)',L_temp(7:9)');
    
    J_pinv = pinv( J_double );
    
    T_6_0_L_doub_temp=fun_subs_sym_to_db_L(Homo_n_sec_L,L_temp(1:3)',L_temp(4:6)',L_temp(7:9)')
    R_dot = (T_target(1:3,1:3) - T_6_0_L_doub_temp(1:3,1:3) );
    S_w = R_dot/T_6_0_L_doub_temp(1:3,1:3);
    V_w = [S_w(3,2),S_w(1,3),S_w(2,1)]';
    dert_T=T_target-T_6_0_L_doub_temp;
    V_v = dert_T(1:3,4);
    V_all=[V_v;V_w];
    
    L_temp = L_temp+J_pinv * V_all
%     if sum( L_temp<0 )>0
%         disp('error , pause')
%         break;
%     end
%     L_temp = L_temp+J_pinv * V_all;
% if i_test<4
%     L_temp = L_temp+J_pinv * V_all*0.7;
% else
%     L_temp = L_temp+J_pinv * V_all;
% end    
    i_test=i_test+1
    
end
    result=L_temp';

end