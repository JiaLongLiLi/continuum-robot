% ����������һ���̶��㣬��5������
% Ҫ���� n_section �� T Ȼ����solver ����L

% ��ע��
% �Ǹ������΢���Դ�һ������ν 0.5
% ���ﾡ����������´ӳ��ȶ���ʼ������
% ע������ֻ�����������ʹ����solver2 û���м��������
% ������ע�ͣ���ɾ��

% ����
% �޸ģ������Ǵ�2��ʼ

clc
clear

dot_number=1;
Homo_db_cell=cell(1,dot_number);


% Homo_db_cell=cell(1,dot_number);

% ������x����ת��
R_fun=@(beita) [1,0,0;
                0,cos(beita),-sin(beita);
                0,sin(beita),cos(beita);
                ];
% ������z����ת��
% R_fun=@(beita) [cos(beita),-sin(beita),0;
%                 sin(beita),cos(beita),0;
%                 0,0,1;
%                 ];
% ���ڹ����ռ�϶������
destination=[3,0,15]';          
for i=1:dot_number
    R=R_fun(pi*3/8+pi*(i-1)/12)
    Homo_db_cell{i}=[
                    R,destination;
                    [0,0,0,1];
                        ];
end
ver_exe2_destination=destination;

save ver_exe2_destination ver_exe2_destination
for i=1:dot_number
    i
    Homo_db=Homo_db_cell{i};

    destination=Homo_db(1:3,4);

    % ���ݸ�����homo���� ���ÿ�ε���������
    
    result=fun_solver2(Homo_db);
    switch i
        case 1 
            ver_exe2_result_1=result;
             save ver_exe2_result_1 ver_exe2_result_1
        case 2 
            ver_exe2_result_2=result;
             save ver_exe2_result_2 ver_exe2_result_2
        case 3 
            ver_exe2_result_3=result;
             save ver_exe2_result_3 ver_exe2_result_3
        case 4 
            ver_exe2_result_4=result;
             save ver_exe2_result_4 ver_exe2_result_4
    end
%     homo_sec_seg_data=fun_get_T_use_L_3_sec(result);
%     fun_plot_3_sec_3_seg(homo_sec_seg_data,destination);
end






