function Jacb_f2_n_sect_L=fun_make_Jacb_f2(number_section)

    syms La Lb Lc
    syms La1 Lb1 Lc1
    syms La2 Lb2 Lc2
    syms La3 Lb3 Lc3
    
    n=3;    %segment 没有影响
    diameters=12;            %这个半径是一直到线缆的孔
    fai_L=atan( (sqrt(3)/3) * (Lc+Lb-2*La)/(Lb-Lc) );
    L_temp = sqrt( La^2+Lb^2+Lc^2-La*Lb-Lb*Lc-La*Lc );
    k_L= 2* L_temp / (diameters * (La+Lb+Lc));
    s_L = (n*diameters * (La+Lb+Lc)/L_temp*asin(L_temp/(3*n*diameters)));
    
    J_f2_L=jacobian([fai_L,k_L,s_L],[La,Lb,Lc]);
    J_f2_L=simplify(J_f2_L);

    
    
    J_temp1=subs(J_f2_L,[La,Lb,Lc],[La1, Lb1, Lc1]);
    J_temp2=subs(J_f2_L,[La,Lb,Lc],[La2, Lb2, Lc2]);
    J_temp3=subs(J_f2_L,[La,Lb,Lc],[La3, Lb3, Lc3]);
    
    if number_section==1
        J_result=J_temp1;
    else
        if number_section==2
            J_result=[J_temp1,zeros(3,3);zeros(3,3),J_temp2];
        else
            if number_section==3
                J_result=[J_temp1,zeros(3,3),zeros(3,3);
                         zeros(3,3),J_temp2,zeros(3,3);
                         zeros(3,3),zeros(3,3),J_temp3;
                      ];
            end
        end
    end
    
   Jacb_f2_n_sect_L= J_result;
    Jacb_f2_n_sect_L=simplify(Jacb_f2_n_sect_L);
    
end