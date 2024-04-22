% 将DH参数表里面的数据转化为homogeneous translation matrix

function cell_HomoTran_array=fun_DH_para_to_T_of_theta(cell_DH_para_array)

    number = max(size(cell_DH_para_array));
%     number = max(size(cell_DH_para_array));
    cell_HomoTran_array = cell(1,number);
    cell_HomoTran_array{1}=fun_DH_para_to_T(cell_DH_para_array{1});
    
    for index=2:number
        cell_HomoTran_array{index}=cell_HomoTran_array{index-1}...
            *fun_DH_para_to_T(cell_DH_para_array{index});
    end    
    
end

