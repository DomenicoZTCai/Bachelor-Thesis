function showAdjPosition(centers,handleX,handleY)
sizeCenters=size(centers);ballNum=sizeCenters(1);
if ballNum==1
    positionX=centers(1)-480;
    positionY=360-centers(2);
    strPositionX=num2str(positionX);
    strPositionY=num2str(positionY);
    set(handleX,'string',strPositionX);
    set(handleY,'string',strPositionY);
elseif ballNum==2
    set(handleX,'string','/');
    difPositionY=abs(centers(2,2)-centers(1,2));
    strDifPositionY=num2str(difPositionY);
    set(handleY,'string',strDifPositionY);
else 
    set(handleX,'string','error');
    set(handleY,'string','error');
end
end