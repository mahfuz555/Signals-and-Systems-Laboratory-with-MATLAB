%Time Invarient and Varient
clc;
clear all;
t = -5:0.5:20;
x = heaviside(t)-heaviside(t-10);
y = 1-2*cos(t).*x;
subplot(311);
stem(t,y,'black','LineWidth',1)
legend('y(n)');
xlabel('<--n-->');
ylabel('y(n)');
title("Time Invarient Signals(Where n don't vary with time)");

subplot(312);
stem(t+1,y,'black','LineWidth',1)
legend('y(n+1)')
xlabel('<--n-->');
ylabel('y(n+1)');
title('Time Varient Signals(Below two signals)(Where n vary with time)');

subplot(313);
stem(t+4,y,'black','LineWidth',1)
xlabel('<--n-->');
ylabel('y(n+4)');
legend('y(n+4)')