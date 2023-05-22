x = [1, 2, 3, 4];
h = [4, 4, 3, 2];
a = length(x);
b = length(h);
n = a+b-1;
cv = zeros(1,n);
for i = 1:a
    for k =1:b
        cv(i+k-1) = cv(i+k-1) + h(k) * x(i);
        display(cv)
    end
end
cv