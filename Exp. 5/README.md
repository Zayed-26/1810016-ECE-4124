### **Experiment No:** 05(a)
### **Experiment Name:** Z-transform of Causal Signal 



<p align='justify'>


</p>
<br>

### **5(a) Code:**

```matlab
x = [1 2 3 4 5];
l = length(x);
X = 0;
z = sym('z');
for i = 0:l-1
    X = X + x(i+1)*z^(-i);
end
display(x)
disp('Z-transform of x:')
display(X)

```

### **5(a) Output:**
![lab5a_1](../images/lab5a_1.png)
<br>
<br>

### **Experiment No:** 05(b)
### **Experiment Name:** Z-transform of anti-Causal Signal 
<br>

### **5(b) Code:**

```matlab
x = [1 2 3 4 5];
l = length(x);
X = 0;
z = sym('z');
for i = l-1:-1:0
    X = X + x(i+1)*z^(abs(i-(l-1)));
end
display(x)
disp('Z-transform of x:')
display(X)

```

### **5(b) Output:**
![lab5b_1](../images/lab5b_1.png)
<br>
<br>

### **Experiment No:** 05(c)
### **Experiment Name:** Z-transform of non-Causal Signal
<br>

### **5(c) Code:**

```matlab
x = [1 2 13 4 5 6];
z_val = 3; %index 3 = value 13
l = length(x);
Z = 0;
z = sym('z');
for i = z_val:-1:1
    Z = Z + x(i)*z^(abs(i-(z_val)));
end
for j = z_val+1:l
    Z = Z + x(j)*z^(-(j-z_val));
end
display(x)
disp('Z-transform of x:')
display(Z)

```

### **5(c) Output:**
![lab5c_1](../images/lab5c_1.png)
<br>
<br>

### **Discussion and Conclusion:**
<p align='justify'>
In this experiment we learnt about z-transform of causal, anti-causal and non-causal signals and implemented in MATLAB.
</p>