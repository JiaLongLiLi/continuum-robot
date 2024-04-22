function Jacobian_n_sect_theta=fun_T_to_Jaco_of_theta(cell_HomoTran_array,cell_DH_para_array)
    
    number=max(size(cell_DH_para_array));
    theta_number = number;
    J_w=sym(zeros(3,theta_number)) ;   
    J_v=sym(zeros(3,theta_number));
    
    % 第一个是旋转副
    J_v(:,1)= cross( [0,0,1]' , ( cell_HomoTran_array{number}(1:3,4) - [0,0,0]')   )';
    J_w(:,1)=[0,0,1]';
    
    for i=2:theta_number
        
        % 先来旋转副
        % 记得要让 3X1
        if eval(cell_DH_para_array{i}(5))==1
          J_v(:,i)= cross( cell_HomoTran_array{i-1}(1:3,3) , ( cell_HomoTran_array{number}(1:3,4) - cell_HomoTran_array{i-1}(1:3,4)))';
          J_w(:,i)=cell_HomoTran_array{i-1}(1:3,3);
        else
          J_v(:,i)=cell_HomoTran_array{i-1}(1:3,3);
          J_w(:,i)=[0,0,0]'; 
        end
    end

    % 第一个是旋转副

    
%     for i=1:theta_number
%         
%         % 先来旋转副
%         % 记得要让 3X1
%         if eval(cell_DH_para_array{i}(5))==1
%           J_v(:,i)= cross( cell_HomoTran_array{i}(1:3,3) , ( cell_HomoTran_array{number}(1:3,4) - cell_HomoTran_array{i}(1:3,4)))';
%           J_w(:,i)=cell_HomoTran_array{i}(1:3,3);
%         else
%           J_v(:,i)=cell_HomoTran_array{i}(1:3,3);
%           J_w(:,i)=[0,0,0]'; 
%         end
%     end

    Jacobian_n_sect_theta=[J_v;J_w];

end