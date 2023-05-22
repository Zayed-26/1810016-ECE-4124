x = [1, 2, 3, 4];
h = [4, 4, 3, 2];
L = length(x);
M = length(h);
N = L + M - 1;
cv = zeros(1,N);
x1 = [x, zeros(1,L)];
h1 = [h, zeros(1,M)];
for i = 1:N
    for j = 1:M
        if (i-j+1) > 0
           cv(i) = cv(i) + x1(j)*h1(i-j+1);
        end
    end
end
disp(x)
disp(y)
disp(cv)
subplot(3,1,1); stem(x); xlabel('n');
ylabel('x[n]'); title('First Signal');

subplot(3,1,2); stem(h); xlabel('n');
ylabel('h[n]'); title('Second Signal');

subplot(3,1,3); stem(cv); xlabel('n');
ylabel('Y[n]'); title('Convoluted Signal');
