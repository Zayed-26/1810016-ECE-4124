xn = [1 2 3 4];
hn = [1 1 1 1];

n1 = length(xn);
n2 = length(hn);
n = max(n1,n2);

if(n1>n2)
    hn = [hn, zeros(1,n-n2)];
else
    xn = [xn, zeros(1,n-n1)];
end
y = zeros(1,n);

for i=0:n-1
    for j=0:n-1
        z = mod(i-j,n);
        y(i+1) = y(i+1)+xn(j+1).*hn(z+1);
    end
end
disp 'xn = ';
disp(xn);
disp 'hn = ';
disp(hn);
disp 'result = ';
disp(y);

subplot(3,1,1); stem(xn); xlabel('n');
ylabel('x[n]'); title('First Signal');

subplot(3,1,2); stem(hn); xlabel('n');
ylabel('h[n]'); title('Second Signal');

subplot(3,1,3); stem(y); xlabel('n');
ylabel('Y[n]'); title('Convoluted Signal');
