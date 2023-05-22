t = 0:4;
t1 = 0:7;
u1 = [0 1 1 1 0];
u2 = [0 1 1 2 2 1 1 0];

subplot(2,1,1)
plot(t,u1);
ylim([0,2]);

subplot(2,1,2)
plot(t1,u2);
ylim([0,3]);