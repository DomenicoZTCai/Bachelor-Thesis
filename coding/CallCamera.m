function [vidOriginal]=CallCamera(numCam,handleAx)
vidOriginal=videoinput('winvideo',numCam,'YUY2_960x720'); % 'I420_640x480''YUY2_640x480
camRes=get(vidOriginal,'videoResolution');
nBands=get(vidOriginal,'NumberOfBands');
axes(handleAx);
hImage=imshow(zeros(camRes(2),camRes(1),nBands));
preview(vidOriginal,hImage);
end