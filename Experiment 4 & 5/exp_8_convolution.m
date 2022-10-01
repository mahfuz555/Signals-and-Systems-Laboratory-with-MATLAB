%======The analytical way of finding Convolution Integral========
%x(t) = exp(2*t).u(-t)
%h(t) = u(t-3)        

clc;
clear all;
close all;

%%Step 1: Replace t with tau
%======Input Signal======%
tx = -3:0.001:0;
x = exp(2*tx).*heaviside(-tx);
subplot(7,2,1);
plot(tx,x,'Color','red','LineWidth',1);
title('Input Signal');
legend('x(\tau)');
ylim([0 1.5]);
grid on;


%======Impluse Response======%
th = 0:0.001:6;
h = heaviside(th-3); %u(t)
subplot(7,2,2);
plot(th,h,'Color','blue','LineWidth',1);
title('Impulse Response');
legend('h(\tau)');
ylim([0 1.5]);

grid on;


%%======Time Reversal of the Impluse Response h(-tau)======%
subplot(7,2,3);
plot(-(th-3),h,'Color','blue','LineWidth',1);
title('Impulse Response(Time Reversal)[h(-tau)]');
legend('h(-\tau)');
ylim([0 1.5]);
xlim([-3 2]);
grid on;

%%Time Shifting the impluse response h(t-tau)====
t = 1;
subplot(7,2,4);
plot(-2-(th-3),h,'Color','blue','LineWidth',1);
title('Impulse Response(Time Shifting when t = -2)');
legend('h(t-\tau)');
ylim([0 1.5]);
xlim([-5 1]);
grid on;

%Combine the signals for convolution
%%Fist Step: Zero Overlap
subplot(7,2,5);
plot(tx,x,'red',2-(th-3),h,'blue','LineWidth',1);
title('y(t) = x(t)*h(t) when t-3>=0 (Convolution Starting)');
legend('x(\tau)','h(t-\tau)');
ylim([0 1.5]);
xlim([-4 5]);
grid on;

%%Second Step: Overlapping starting....
subplot(7,2,6);
t = -3;
plot(tx,x,'red',0-(th-3),h,'blue','LineWidth',1);
title('y(t) = x(t)*h(t) when t-3<=0');
legend('x(\tau)','h(t-\tau)');
ylim([0 1.5]);
xlim([-3 5]);
grid on;

%%COmputing Integral
%%overlapping when t-3>=0;
%%1st step Convolution
syms t r    %r=time interval
f = exp(2*r);  %f=function
y = int(f,r,-inf,0);    %f=function,r=time interval, 0,t=intregal limit

%%overlapping when t-3<=0;
%%2nd step Convolution
syms t r    
f = exp(2*r);  
y = int(f,r,-inf,t-3);

%%Output of the Convolution
t1 = -3:0.001:3;
t2 = 3:0.001:5;

y1 = 0.5*exp(2*t1-6);
y2 = (1/2)*ones(size(t2));
subplot(7,2,7);
plot(t1,y1,t2,y2,'LineWidth',1);
title('Output of the Convolution y(t)');
ylim([0 0.8]);
xlim([-3 5]);
grid on;

y = conv(x,h)*0.01;
ty = -3:3/length(y):0-3/length(y);
subplot(7,2,7);
plot(ty,y);


