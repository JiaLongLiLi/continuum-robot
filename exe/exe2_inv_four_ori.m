% 这里是逆向一个固定点，从5个方向
% 要定义 n_section 和 T 然后用solver 求解出L

% 备注：
% 那个误差稍微可以大一点无所谓 0.5
% 这里尽快结束，线缆从长度都开始随便变了
% 注意这里只保存最后结果，使用了solver2 没有中间迭代过程
% 尽量加注释，不删除

% 代办
% 修改：现在是从2开始

clc
clear

dot_number=1;
Homo_db_cell=cell(1,dot_number);


% Homo_db_cell=cell(1,dot_number);

% 这是绕x轴旋转的
R_fun=@(beita) [1,0,0;
                0,cos(beita),-sin(beita);
                0,sin(beita),cos(beita);
                ];
% 这是绕z轴旋转的
% R_fun=@(beita) [cos(beita),-sin(beita),0;
%                 sin(beita),cos(beita),0;
%                 0,0,1;
%                 ];
% 不在工作空间肯定会出错
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

    % 根据给定的homo矩阵 求解每段的驱动长度
    
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






