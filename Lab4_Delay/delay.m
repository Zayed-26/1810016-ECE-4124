clc; clear all;
t=0:0.01:12;

x1= t>=4 & t<=8;
x2= t>=5 & t<=7;
s1=x1+x2;

y1= t>=7 & t<=11;
y2= t>=8 & t<=10;
s2=y1+y2;

[c,lag]=xcorr(s2,s1);
c1=c/max(abs(c(:)));

subplot(3,1,1)
plot(t,s1);
title('Original Signal');

subplot(3,1,2)
plot(t,s2);
title('Delayed Signal');

subplot(3,1,3)
plot(lag*0.01,c1);
title('Correlation');

maxY = max(c1);
indexesOfMax = find(c1 == maxY);
p = lag(indexesOfMax);
q=p*0.01;
disp("Delay: ");
disp(q);