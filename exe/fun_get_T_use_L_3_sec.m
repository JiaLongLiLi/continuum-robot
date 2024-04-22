function T_final_array=fun_get_T_use_L_3_sec(result)
    
    % 将给定的L配置 变为 一系列的T矩阵
    [row,~]=size(result);
    T_cell_array=cell(row,9); % 是关于T1 T2 T3 的相对的，不是绝对的
    T_final_array=cell(row,9);
    for iter=1:row
       
        % 先画一条 用 result(row,:) 的数据
        for section=1:3
            colume_3=[3*(section-1)+1,3*(section-1)+2,3*(section-1)+3];
            [k,s,fai]=fun_L_to_ks(result(iter,colume_3));
            T_cell_array(iter,colume_3)=fun_ks_to_T_3_seg(k,s,fai);
            
            switch section
                case 1
                    T_final_array(iter,colume_3)=T_cell_array(iter,colume_3);
                case 2
                    T_final_array{iter,4}=T_cell_array{iter,3}*T_cell_array{iter,4};
                    T_final_array{iter,5}=T_cell_array{iter,3}*T_cell_array{iter,5};
                    T_final_array{iter,6}=T_cell_array{iter,3}*T_cell_array{iter,6};
                case 3
                    T_final_array{iter,7}=T_final_array{iter,6}*T_cell_array{iter,7};
                    T_final_array{iter,8}=T_final_array{iter,6}*T_cell_array{iter,8};
                    T_final_array{iter,9}=T_final_array{iter,6}*T_cell_array{iter,9};
            end  
        end
        
    end
   
end
