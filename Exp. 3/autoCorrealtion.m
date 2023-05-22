clc;
clear all;
close all;
x=input('enter the sequence');
h = fliplr(x);
z = [];
for i=1:length(x)
    g = h.*x(i);
    z = [z g]; 
end

%disp(z);
z1=reshape(z,length(x),length(x),[]);
z2=z1';
%disp(z2);
z3 = flip(z2);
%disp(z3);
cd = 0;
y = [];
for i=length(x)-1:-1:-(length(x)-1)
    cd=sum(diag(z3,i));
    y=[y cd];
    cd = 0;
end
%disp(y);
auto_correlation = flip(y);
auto_correlation

subplot(2,1,1)
stem(x,'filled')
ylabel('Amplitude')
xlabel('Samples')
title('X(n)')

subplot(2,1,2)
stem(auto_correlation,'filled')
ylabel('Amplitude')
xlabel('Samples')
title('Auto Correlation')

