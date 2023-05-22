t = -10:0.1:10;
y = sin(t);
subplot(3,3,2);
plot(t,y);
axis([-10 10 -2 2]);
xlabel('t');
ylabel('sint');

y1 = sin(2*t);
subplot(3,3,4);
plot(t,y1);
axis([-10 10 -2 2]);
xlabel('t');
ylabel('sin1.5t');

y2 = sin(0.25*t);
subplot(3,3,7);
plot(t,y2);
axis([-10 10 -2 2]);
xlabel('t');
ylabel('sin1.25t');

y3 = 2*sin(t);
subplot(3,3,5);
plot(t,y3);
axis([-10 10 -2 2]);
xlabel('t');
ylabel('2*sin(t)');

y4 = .5*sin(t);
subplot(3,3,8);
plot(t,y4);
axis([-10 10 -2 2]);
xlabel('t');
ylabel('.5*sin(t)');

y5 = sin(t-2);
subplot(3,3,6);
plot(t,y5);
axis([-10 10 -2 2]);
xlabel('t');
ylabel('sin(t-2)');

y6 = sin(t+2);
subplot(3,3,9);
plot(t,y6);
axis([-10 10 -2 2]);
xlabel('t');
ylabel('sin(t+2)');



