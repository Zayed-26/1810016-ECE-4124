clc;clear all;close all;
x= input('enter first sequence');
h = input('enter second sequence');
h1=fliplr(h);
z = [];
for i=1:length(x)
    g = h1.*x(i);
    z = [z g]; 
end
z1=reshape(z,length(x),length(x),[]);
z2=z1';
z3 = flip(z2);
cd = 0;
y = [];
for i=length(x)-1:-1:-(length(x)-1)
    cd=sum(diag(z3,i));
    y=[y cd];
    cd = 0;
end
cross_correlation = flip(y);
cross_correlation

subplot(3,1,1)
stem(x,'filled')
ylabel('Amplitude')
xlabel('Samples')
title('X(n)')

subplot(3,1,2)
stem(h,'filled')
ylabel('Amplitude')
xlabel('Samples')
title('H(n)')

subplot(3,1,3)
stem(cross_correlation,'filled')
ylabel('Amplitude')
xlabel('Samples')
title('Cross Correlation')