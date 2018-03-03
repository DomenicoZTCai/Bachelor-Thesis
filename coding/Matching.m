function [xmin,ymin,zmin,ballNum]=Matching(centers1,centers2,p,f,handlesEditState)
sizeCenters1=size(centers1);sizeCenters2=size(centers2);
ballNum=sizeCenters1(1);
xmin=0;ymin=xmin;zmin=xmin;
if sizeCenters1(1)~= sizeCenters2(1)     % 球数不等
        set(handlesEditState,'string','not matched');
        ballNum=0;
    elseif sizeCenters1(1)==0                % 没有球
        set(handlesEditState,'string','none');
    elseif sizeCenters1(1)==1                % 一个球
        set(handlesEditState,'string','one');
        [xmin,ymin,zmin]=findIntersection(centers1,centers2,p,f);
        elseif sizeCenters1(1)==2                  % 两个球
        set(handlesEditState,'string','two');
        [centers1,centers2]=ReOrder(centers1,centers2);
        % 2*lines from camera 1
        centers1_1=centers1(1,:);centers1_2=centers1(2,:);
        centers2_1=centers2(1,:);centers2_2=centers2(2,:);
        [xmin1,ymin1,zmin1]=findIntersection(centers1_1,centers2_1,p,f);
        [xmin2,ymin2,zmin2]=findIntersection(centers1_2,centers2_2,p,f);
        xmin=[xmin1;xmin2];ymin=[ymin1;ymin2];zmin=[zmin1;zmin2];
    else                            % 多于两个球
        set(handlesEditState,'string','more than two');
end
% xmin=1.5*xmin;ymin=1.5*ymin;zmin=1.5*zmin;
end