function [k,s,fai]=L_to_ks(colume_3)


    La=colume_3(1);
    Lb=colume_3(2);
    Lc=colume_3(3);
    
    n=3;    %segment 没有影响
    diameters=12;            %这个半径是一直到线缆的孔
    temp=(sqrt(3)/3) * (Lc+Lb-2*La)/(Lb-Lc);
    
    % 这里在进行重大改进
    fai_L=atan( temp );
%     fai_test=atan( temp )
%     fai_L=atan( temp )
%     fai_L=-pi*((sign(Lb-7)+1)/2)+atan( temp )
%     fai_L=-pi*((sign(Lb-7)+1)/2)+atan( temp )
%       fai_L=pi+atan( temp )
    
    
    L_temp = sqrt( La^2+Lb^2+Lc^2-La*Lb-Lb*Lc-La*Lc );
    k_L= 2* L_temp / (diameters * (La+Lb+Lc));
    s_L = (n*diameters * (La+Lb+Lc)/L_temp*asin(L_temp/(3*n*diameters)));
    
    k=k_L;
    s=s_L;
    fai=fai_L;

end