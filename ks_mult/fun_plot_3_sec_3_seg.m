function fun_plot_3_sec_3_seg(homo_sec_seg_data,destination)
    [row,~]=size(homo_sec_seg_data);
    N=3;    %一共有3section
    plot3(destination(1),destination(2),destination(3),'s','MarkerSize',10,'MarkerFaceColor','m')
    hold on
    for i_row=1:row
        
        % 先把cell里面的位置拿出来
        position=zeros(3,9);
        for i_position=1:9
           position(:,i_position)=homo_sec_seg_data{i_row,i_position}(1:3,4);
        end
        T_X=[0,position(1,:)];
        T_Y=[0,position(2,:)];
        T_Z=[0,position(3,:)];
        
        for i_sc=1:N
        x_plot=T_X((i_sc-1)*3+1:i_sc*3+1); 
        y_plot=T_Y((i_sc-1)*3+1:i_sc*3+1);
        z_plot=T_Z((i_sc-1)*3+1:i_sc*3+1);
            switch i_sc
                case 1 
                    plot3(x_plot,y_plot,z_plot,'r-o','LineWidth',1.5,...
        'MarkerEdgeColor','g',...
        'MarkerFaceColor','g',...
        'MarkerSize', 2.5)   
%                     plot3(x_plot,y_plot,z_plot,'r-p')
                case 2 
                    plot3(x_plot,y_plot,z_plot,'g-o','LineWidth',1.5,...
        'MarkerEdgeColor','g',...
        'MarkerFaceColor','g',...
        'MarkerSize', 2.5)   
%                     plot3(x_plot,y_plot,z_plot,'g-p')
                case 3 
                    plot3(x_plot,y_plot,z_plot,'b-o','LineWidth',1.5,...
        'MarkerEdgeColor','g',...
        'MarkerFaceColor','g',...
        'MarkerSize', 2.5)   
%                     plot3(x_plot,y_plot,z_plot,'b-p')
                otherwise
                    plot3(x_plot,y_plot,z_plot,'c-p')
            end
            
        end
        axis equal
    end
end