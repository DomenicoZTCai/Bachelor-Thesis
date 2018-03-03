function [dis]=plotIn3D(xmin,ymin,zmin,ballNum,handleResult)
ballNumStr=num2str(ballNum);
switch ballNumStr
    case '1'
        how='o';
    case '2'
        how='o-';
end
figure(1)
grid on;
hold on;
plot3(zmin,-xmin,ymin,how);
axis ([300 700 -200 200 -150 200]);
view(-20,40);
xlabel( 'z');ylabel( 'x');zlabel( 'y');
% ÏÔÊ¾ÈýÎ¬×ø±ê
if ballNum==1
    str3Dx=num2str(xmin);str3Dy=num2str(ymin);str3Dz=num2str(zmin);
    str3D=[str3Dx,' , ',str3Dy,' , ',str3Dz];
    set(handleResult,'string',str3D);
    dis=0;
elseif ballNum==2
    dis=((xmin(2)-xmin(1))^2+(ymin(2)-ymin(1))^2+(zmin(2)-zmin(1))^2)^0.5;
    strDis=num2str(dis);
    strDis=['The distance between 2 balls = ',strDis];
    set(handleResult,'string',strDis);
end
end