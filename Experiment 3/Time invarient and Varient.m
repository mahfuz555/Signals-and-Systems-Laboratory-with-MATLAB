%Time Invarient and Varient
clc;
clear all;
t = -5:0.01:20;
x = heaviside(t)-heaviside(t-10);
y = 1-2*cos(t).*x;
subplot(311);
plot(t,y,'black','LineWidth',1)
legend('y(t)');
xlabel('<--t-->');
ylabel('y(t)');
title("Time Invarient Signals(Where t don't vary with time)");

subplot(312);
plot(t+1,y,'black','LineWidth',1);
legend('y(t+1)');
xlabel('<--t-->');
ylabel('y(t+1)');
title('Time Varient Signals(Below two signals)(Where t vary with time)');

subplot(313);
plot(t+4,y,'black','LineWidth',1);
xlabel('<--t-->');
ylabel('y(t+4)');
legend('y(t+4)');