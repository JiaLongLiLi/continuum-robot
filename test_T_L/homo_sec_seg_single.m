function T_final_array=homo_sec_seg_single(result)
    
    row=1;
    T_cell_array=cell(row,3); % 是关于T1 T2 T3 的相对的，不是绝对的
    T_final_array=cell(row,3);
    for iter=1:row
       
        % 先画一条 用 result(row,:) 的数据
        section=1;
            colume_3=[3*(section-1)+1,3*(section-1)+2,3*(section-1)+3];
            [k,s,fai]=L_to_ks(result(iter,colume_3));
           
            T_cell_array(iter,colume_3)=homo_ks_3_segm(k,s,fai);
            
                        
            T_final_array(iter,colume_3)=T_cell_array(iter,colume_3);
                       
     
        
    end
   
end
