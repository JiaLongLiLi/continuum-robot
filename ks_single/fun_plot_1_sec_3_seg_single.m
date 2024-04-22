function fun_plot_1_sec_3_seg_single(homo_sec_seg_data,destination)
    N=1;    %一共有3section
    
    plot3(destination(1),destination(2),destination(3),'s','MarkerSize',10,'MarkerFaceColor','b')
    hold on
    i_row=1;
        
        % 先把cell里面的位置拿出来
        position=zeros(3,3);
        for i_position=1:3
           position(:,i_position)=homo_sec_seg_data{i_row,i_position}(1:3,4);
        end
        T_X=[0,position(1,:)];
        T_Y=[0,position(2,:)];
        T_Z=[0,position(3,:)];
        
        for i_sc=1:N
        x_plot=T_X((i_sc-1)*3+1:i_sc*3+1); 
        y_plot=T_Y((i_sc-1)*3+1:i_sc*3+1);
        z_plot=T_Z((i_sc-1)*3+1:i_sc*3+1);
            
%         plot3(x_plot,y_plot,z_plot,'r-o')
        plot3(x_plot,y_plot,z_plot,'b-o','LineWidth',1.5,...
        'MarkerEdgeColor','g',...
        'MarkerFaceColor','g',...
        'MarkerSize', 2.5)      
          
            
        end
        axis equal
  
end