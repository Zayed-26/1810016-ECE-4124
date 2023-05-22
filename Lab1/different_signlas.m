% Define the range of x values
x = -5:0.001:5;
n = -10:1:10;

% Continuous unit impulse signal
delta = @(x) x==0; % Define the function for the impulse signal
subplot(3,1,1); % Create a subplot for the impulse signal
plot(x, delta(x)); % Plot the impulse signal
title('Continuous Unit Impulse Signal'); % Add a title to the subplot
xlabel('Time'); % Add an x-axis label
ylabel('Amplitude'); % Add a y-axis label

% Continuous unit ramp signal
u_ramp = @(x) x.*(x>=0); % Define the function for the ramp signal
u_dis_ramp = @(n) n.*(n>=0);
subplot(3,1,2); % Create a subplot for the ramp signal
plot(x, u_ramp(x)); % Plot the ramp signal
stem(n, u_dis_ramp(n));
title('Continuous Unit Ramp Signal'); % Add a title to the subplot
xlabel('Time'); % Add an x-axis label
ylabel('Amplitude'); % Add a y-axis label

% Continuous unit step signal
u_step = @(x) 1.*(x>=0); % Define the function for the step signal
subplot(3,1,3); % Create a subplot for the step signal
plot(x, u_step(x)); % Plot the step signal
title('Continuous Unit Step Signal'); % Add a title to the subplot
xlabel('Time'); % Add an x-axis label
ylabel('Amplitude'); % Add a y-axis label
