function [centers,radii,frame]=ImgPreprocessing(vidOriginal)
frame=getsnapshot(vidOriginal);
I1=frame(:,:,3);
frame=imbinarize(I1,'global');
[centers, radii] = imfindcircles(frame,[25 75]);
end