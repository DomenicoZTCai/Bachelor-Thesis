function showAdjSolution(centers1,centers2,handleEditCam1,handleEditCam2)
sizeCenters1=size(centers1);sizeCenters2=size(centers2);
ballNumCam1=sizeCenters1(1);ballNumCam2=sizeCenters2(1);
% Cam1
if ballNumCam1==0
    set(handleEditCam1,'string','No ball detected.');
elseif ballNumCam1==1
    if centers1(1)-480>0
        AdjCam1X='Turn right;';
    else
        AdjCam1X='Turn left;';
    end
    if 360-centers1(2)>0
        AdjCam1Y='Turn up;';
    else
        AdjCam1Y='Turn down;';
    end
    AdjCam1=[AdjCam1X,' ',AdjCam1Y];
    set(handleEditCam1,'string',AdjCam1);
elseif ballNumCam1==2
    if centers1(1,1)>centers1(2,1)
        temp1=centers1(1,:);temp2=centers1(2,:);
        centers1(1,:)=temp2;centers1(2,:)=temp1;
    end
    if centers1(1,2)<centers1(2,2)
        set(handleEditCam1,'string','Turn clockwise.');
    else 
        set(handleEditCam1,'string','Turn anti-clockwise.');
    end
else
    set(handleEditCam1,'string','More than 2 balls detected.');
end
% Cam2
if ballNumCam2==0
    set(handleEditCam2,'string','No ball detected.');
elseif ballNumCam2==1
    if centers2(1)-480>0
        AdjCam2X='Turn right;';
    else
        AdjCam2X='Turn left;';
    end
    if 360-centers2(2)>0
        AdjCam2Y='Turn up;';
    else
        AdjCam2Y='Turn down;';
    end
    AdjCam2=[AdjCam2X,' ',AdjCam2Y];
    set(handleEditCam2,'string',AdjCam2);
elseif ballNumCam2==2
    if centers2(1,1)>centers2(2,1)
        temp1=centers2(1,:);temp2=centers2(2,:);
        centers2(1,:)=temp2;centers2(2,:)=temp1;
    end
    if centers2(1,2)<centers2(2,2)
        set(handleEditCam2,'string','Turn clockwise.');
    else 
        set(handleEditCam2,'string','Turn anti-clockwise.');
    end
else
    set(handleEditCam2,'string','More than 2 balls detected.');
end
end