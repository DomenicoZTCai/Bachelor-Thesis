function [xmin,ymin,zmin]=findIntersection(centers1,centers2,p,f)
% line from camera 1         
positionX1=centers1(1)-480;positionY1=360-centers1(2);
point1_0=[0,0,0];point1_1=[positionX1*p,positionY1*p,f];
n1=point1_1 - point1_0;
% line from camera 1 
positionZ2=centers2(1)-480;positionY2=360-centers2(2);
point2_0=[500,0,500];point2_1=[500-f,positionY2*p,500+positionZ2*p];
n2=point2_1 - point2_0;
% ??????????
project1=[n1(1),n1(3)];
project2=[n2(1),n2(3)];
xzmin=([project1;project2]*[0 -1;1 0])\[0;500*(project2(2)-project2(1))];
xmin=xzmin(1);zmin=xzmin(2);
ymin=zmin*positionY1*p/f;
end