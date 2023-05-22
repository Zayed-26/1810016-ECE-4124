 sig1= [0 0 0 0 0 0 1 1 1 1 1 1 0 0 0 0 0 0 0];
 sig2= [0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 0 0 0 0];
 t = 1:19;
 subplot(4,1,1);
 stem(t,sig1);
 xlabel('n');
 ylabel('X(n)');
 title('Signal 1');

 subplot(4,1,2);
 stem(t,sig2);
 xlabel('n');
 ylabel('X(n)');
 title('Signal 2');

 sig3 = sig1+sig2;
 subplot(4,1,3);
 stem(t,sig3);
 xlabel('n');
 ylabel('X(n)');
 title('Addition');

 sig4 = sig1-sig2;
 subplot(4,1,4);
 stem(t,sig4);
 xlabel('n');
 ylabel('X(n)');
 title('Subtraction');