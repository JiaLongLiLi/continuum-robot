% ������section�������Զ����DH��Ĳ���

function cell_DH_para_array=fun_DH_para_init_data(number_section)
    
    global theta_pi_2
    cell_number=5*number_section;
    cell_DH_para_array = cell(1,cell_number);
    
    %DH������Ĵ�����ݷֱ�Ϊ a alpha d theta type(0Ϊ���˶��� 1Ϊ��ת 2Ϊƽ��)
    %��һ������
    
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