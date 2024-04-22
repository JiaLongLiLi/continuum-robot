function matrix_ks=fun_theta_to_ks(matrix_theta)
    
    syms k s fai
    syms k1 s1 fai1
    syms k2 s2 fai2
    syms k3 s3 fai3
    syms theta1 theta2  d3  theta4  theta5
    syms theta6 theta7  d8  theta9  theta10
    syms theta11 theta12  d13  theta14  theta15
    syms La Lb Lc
    syms La1 Lb1 Lc1
    syms La2 Lb2 Lc2
    syms La3 Lb3 Lc3
    
    % 这个是论文综述的
    theta1_ks=fai;
    theta2_ks=k*s/2;
    d3_ks=2/k*sin(k*s/2);
    theta4_ks=k*s/2;
    theta5_ks=-fai;

    % 这个是第一篇论文的
%     theta1_ks=atan( (cos(k*s/2)) / (-sin(k*s/2)*cos(fai)));
%     theta2_ks=asin(  (sin(k*s/2)*sin(fai))  );
%     d3_ks=2/k*sin(k*s/2);
%     theta4_ks=asin( sin(k*s/2)*sin(fai)  );
%     theta5_ks=atan( (cos(k*s/2)) /(-sin(k*s/2)*cos(fai))) +pi;

    % 这个是杂糅的
%     theta1_ks=fai;
%     theta2_ks=asin(  (sin(k*s/2)*sin(fai))  );
%     d3_ks=2/k*sin(k*s/2);
%     theta4_ks=asin( sin(k*s/2)*sin(fai)  );
%     theta5_ks=-fai;
    
    
    theta_ks=[theta1_ks,theta2_ks,d3_ks,theta4_ks,theta5_ks];
    
    theta_ks1=subs(theta_ks,[k, s, fai],[k1, s1, fai1]);
    theta_ks2=subs(theta_ks,[k, s, fai],[k2, s2, fai2]);
    theta_ks3=subs(theta_ks,[k, s, fai],[k3, s3, fai3]);
    
    matrix_theta=subs(matrix_theta,[theta1,theta2, d3, theta4, theta5],theta_ks1);
    matrix_theta=subs(matrix_theta,[theta6,theta7, d8, theta9, theta10],theta_ks2);
    matrix_ks=subs(matrix_theta,[theta11,theta12, d13, theta14, theta15],theta_ks3);
    
  
end