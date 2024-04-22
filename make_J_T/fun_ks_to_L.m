function matrix_L=fun_ks_to_L(matrix_ks)
    
    syms k s fai
    syms k1 s1 fai1
    syms k2 s2 fai2
    syms k3 s3 fai3

    syms La Lb Lc
    syms La1 Lb1 Lc1
    syms La2 Lb2 Lc2
    syms La3 Lb3 Lc3
   
    %-------上面替换为ksfai 接下来L-----------------------------------------
    %  注意这里 J_f2 顺序 [fai,k,s]
    n=3;    %segment 没有影响
    diameters=12;            %这个半径是一直到线缆的孔
    fai_L=atan( (sqrt(3)/3) * (Lc+Lb-2*La)/(Lb-Lc) );
    L_temp = sqrt( La^2+Lb^2+Lc^2-La*Lb-Lb*Lc-La*Lc );
    k_L= 2* L_temp / (diameters * (La+Lb+Lc));
    s_L = (n*diameters * (La+Lb+Lc)/L_temp*asin(L_temp/(3*n*diameters)));
    


    ksfai_L=[fai_L,k_L,s_L];
    ksfai_L1=subs(ksfai_L,[La,Lb,Lc],[La1,Lb1,Lc1]);
    ksfai_L2=subs(ksfai_L,[La,Lb,Lc],[La2,Lb2,Lc2]);
    ksfai_L3=subs(ksfai_L,[La,Lb,Lc],[La3,Lb3,Lc3]);

    
    matrix_ks=subs(matrix_ks,[fai1,k1, s1],ksfai_L1);
    matrix_ks=subs(matrix_ks,[fai2,k2, s2],ksfai_L2);
    matrix_L=subs(matrix_ks,[fai3,k3, s3],ksfai_L3);



end