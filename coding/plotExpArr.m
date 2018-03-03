function plotExpArr(Arr,I,true)
a=1:I;
Arr=Arr(a);
Mean=mean(Arr).*ones(1,I);
True=true.*ones(1,I);
figure();grid on;hold on;
axis ([0 100 true-50 true+50]);
plot(a,Arr,'bo-');
plot(a,True,'r-');
plot(a,Mean,'r--');
Xmean=mean(Arr);S2=sum((Mean-Arr).^2)/(I-1);
Xmean
S2
end