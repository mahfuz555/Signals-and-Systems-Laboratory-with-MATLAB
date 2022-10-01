%======The analytical way of finding Convolution Integral========
%x(t) = exp(-a*t)u(t),    0<=t<=1
%h(t) = u(t),             0<=t<=1
clc;
clear all;
close all;

%%Step 1: Replace t with tau
%======Input Signal======%
tx = 0:0.001:1;
a = 1;
x = exp(-a*tx).*heaviside(tx);
subplot(7,2,1);
plot(tx,x,'Color','red','LineWidth',1);
title('Input Signal');
legend('x(\tau)');
grid on;


%======Impluse Response======%
th = -1:0.001:1;
h = heaviside(th); %u(t)
subplot(7,2,2);
plot(th,h,'Color','blue','LineWidth',1);
title('Impulse Response');
legend('h(\tau)');
ylim([0 1.5]);
grid on;

%%======Time Reversal of the Impluse Response======%
subplot(7,2,3);
plot(-th,h,'Color','blue','LineWidth',1);
title('Impulse Response(Time Reversal) h(-tau)');
legend('h(-\tau)');
ylim([0 1.5]);
xlim([-3 4]);
grid on;

%%Time Shifting the impluse response h(t-tau)====
t = -1;
subplot(7,2,4);
plot(-th+t,h,'Color','blue','LineWidth',1);
title('Impulse Response(Time Shifting when t = -1)');
legend('h(t-\tau)');
ylim([0 1.5]);
xlim([-3 2]);
grid on;

%Combine the signals for convolution
%%Fist Step: Zero Overlap
subplot(7,2,5);
plot(tx,x,'red',-th+t,h,'blue','LineWidth',1);
title('y(t) = x(t)*h(t) when t<0');
legend('x(\tau)','h(t-\tau)');
ylim([0 1.5]);
xlim([-3 4]);
grid on;

%Shifted towards the impulse when t>0 
%%Second step: Overlaping Started...
t=1;
subplot(7,2,6);
plot(tx,x,'red',-th+t,h,'blue','LineWidth',1);
title('y(t) = x(t)*h(t) when t>0(Convolution Starting)');
legend('x(\tau)','h(t-\tau)');
ylim([0 1.5]);
xlim([-3 4]);
grid on;

%%COmputing Integral
%%overlapping
syms t r    %r=time interval
f = exp(-r);  %f=function
y = int(f,r,0,t);    %f=function,r=time interval, 0,t=intregal limit

%%Output of the Convolution
t = 0:0.001:3;
y = (1-exp(-t)).*heaviside(t);      %%For all t values when t>0...
subplot(7,2,7);
plot(t,y,'magenta','LineWidth',1);
title('Output of the Convolution y(t)');


