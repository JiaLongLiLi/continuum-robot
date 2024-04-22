% 将根据section的数量自动填充DH表的参数

function cell_DH_para_array=fun_DH_para_init_data(number_section)
    
    global theta_pi_2
    cell_number=5*number_section;
    cell_DH_para_array = cell(1,cell_number);
    
    %DH参数表的存放数据分别为 a alpha d theta type(0为非运动副 1为旋转 2为平移)
    %第一个数据
    
    for i=1:number_section
        for ii=1:5
            index=(i-1)*5+ii;
            switch ii
                case 1              
                    cell_DH_para_array{index}=[0,-theta_pi_2,0,sym(['theta',num2str(index)]),1];
                case 2              
                    cell_DH_para_array{index}=[0,theta_pi_2,0,sym(['theta',num2str(index)]),1];    
                case 3              
                    cell_DH_para_array{index}=[0,-theta_pi_2,sym(['d',num2str(index)]),0,2];
                case 4              
                    cell_DH_para_array{index}=[0,theta_pi_2,0,sym(['theta',num2str(index)]),1];
                case 5              
                    cell_DH_para_array{index}=[0,0,0,sym(['theta',num2str(index)]),1];
            end
        end
        
    end
  
end