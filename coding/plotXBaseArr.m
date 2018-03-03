function plotXBaseArr(xBaseArr,xBaseI,True)
a=1:xBaseI;
xBaseArr=xBaseArr(a);
xBaseMean=mean(xBaseArr).*ones(1,xBaseI);
xBaseTrue=True.*ones(1,xBaseI);
figure();grid on;hold on;
plot(a,xBaseArr,'bo-');
plot(a,xBaseTrue,'r-')
plot(a,xBaseMean,'r--');
end