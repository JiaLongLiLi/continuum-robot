function Jacb_f1_n_sect_ks=fun_make_Jacb_f1(number_section)

    syms k s fai
    syms k1 s1 fai1
    syms k2 s2 fai2
    syms k3 s3 fai3

    syms La Lb Lc
    syms La1 Lb1 Lc1
    syms La2 Lb2 Lc2
    syms La3 Lb3 Lc3
    load('ver_J_f1_ks.mat')
    % load 进来的变量叫 ver_J_f1_ks
    J_temp1=subs(ver_J_f1_ks,[k, s, fai],[k1, s1, fai1]);
    J_temp2=subs(ver_J_f1_ks,[k, s, fai],[k2, s2, fai2]);
    J_temp3=subs(ver_J_f1_ks,[k, s, fai],[k3, s3, fai3]);
    
    if number_section==1
        J_result=J_temp1;
    else
        if number_section==2
            J_result=[J_temp1,zeros(5,3);zeros(5,3),J_temp2];
        else
            if number_section==3
                J_result=[J_temp1,zeros(5,3),zeros(5,3);
                         zeros(5,3),J_temp2,zeros(5,3);
                         zeros(5,3),zeros(5,3),J_temp3;
                      ];
            end
        end
    end
    
  
    Jacb_f1_n_sect_ks=simplify(J_result);

    
    
end