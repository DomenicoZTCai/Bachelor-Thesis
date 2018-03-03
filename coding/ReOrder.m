function [centers1,centers2]=ReOrder(centers1,centers2)
        if centers1(1,2)<=centers1(2,2)
            temp1=centers1(1,:);temp2=centers1(2,:);
            centers1=[temp2;temp1];
        end
        if centers2(1,2)<=centers2(2,2)
            temp1=centers2(1,:);temp2=centers2(2,:);
            centers2=[temp2;temp1];
        end
end