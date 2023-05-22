x = [1,2,3,4];
h = [4,4,3,2];
L = length(x);
M = length(h);
N = L+M-1;
y = zeros(1,N);
for n = 1:L
    j = 1;
    k = n;
    while ((j >= 1 && j <= n)&&(k <= n && k >= 1))
        y(n) = y(n) + x(j)*h(k);
        j = j+1;
        k = k-1;
        display(y)
    end
end

for n = L+1:N
    j = 2;
    k = M;
    while ((j >= 1 && j <= L)&&(k <= L && k >= 1))
        y(n) = y(n) + x(j)*h(k);
        j = j+1;
        k = k-1;
        display(y)
    end
end
y