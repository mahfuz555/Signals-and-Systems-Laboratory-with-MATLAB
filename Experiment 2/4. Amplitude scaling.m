%%x(t) = Asin(t);
clc;
clear all;
close all;


%Before Amplitude scaling...
A = 1;
t = 0:0.01:6*pi;
y = A*sin(t);
subplot(211);
grid on;
plot(t,y,'Color','black','LineWidth',1);
title('Before Amplitude scaling (When A = 2)[Main Signal]');
legend('y(t) = sin(t)');
ylim([-1 1]);

%After Amplitude scaling
A = 0.5;
t = 0:0.01:6*pi;
y = A*sin(t);
subplot(212);
grid on;
plot(t,y,'Color','black','LineWidth',1);
title('After Amplitude scaling (When A = 0.5)');
ylim([-1 1]);