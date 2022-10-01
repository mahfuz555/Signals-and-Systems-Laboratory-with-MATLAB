%======The analytical way of finding Convolution Integral========
%h(t) = u(t),             -1<=t<=2
%x(t) = exp(-a*t).u(t),    0<=t<=2.
clc;
clear all;
close all;

%%Step 1: Replace t with tau
%======Impluse Response======%
th = -1:0.01:1;
h = [th>=0];  %u(t)
subplot(411);
plot(th,h,'Color','blue','LineWidth',1);
title('Impulse Response');
legend('h(\tau)');
ylim([0 2]);
grid on;


