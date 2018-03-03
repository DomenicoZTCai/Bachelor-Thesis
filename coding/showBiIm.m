function showBiIm(handleAx,centers,radii,frame)
axes(handleAx);
imshow(frame);
viscircles(centers, radii,'EdgeColor','b');
end