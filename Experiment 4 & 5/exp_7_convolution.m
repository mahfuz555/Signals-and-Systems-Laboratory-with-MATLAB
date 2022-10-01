%======The analytical way of finding Convolution Integral========
%x(t) = 1,  0<t<1           When T =1;
%h(t) = t,  0<t<2.

clc;
clear all; 
close all;

th1 = -1:0.01:0;
th2 = 0:0.01:1;         %0<t<T;
th3 = 1:0.01:2;

x1 = zeros(size(th1));
x2 = ones(size(th2));    %x = 1  
x3 = zeros(size(th3));

tx = [th1 th2 th3];
x = [x1 x2 x3];

subplot(10,2,1);
plot(tx,x,'Color','red','LineWidth',1);
title('Input Signal');
legend('x(\tau)');
grid on;
ylim([0 1.5]);


th1 = -1:0.01:0;
th2 = 0:0.01:2;         %0<t<2T and t =1;
th3 = 2:0.01:3;

h1 = zeros(size(th1));
h2 = th2;    %h = t  
h3 = zeros(size(th3));

th = [th1 th2 th3];
h = [h1 h2 h3];

subplot(10,2,2);
plot(th,h,'Color','blue','LineWidth',1);
title('Impulse Response');
legend('h(\tau)');
grid on;
ylim([0 2.5]);

%%======Time Reversal of the Impluse Response======%
subplot(10,2,3);
plot(-th,h,'Color','blue','LineWidth',1);
title('Impulse Response(Time Reversal) [h(-tau)]');
legend('h(-\tau)');
ylim([0 2.5]);
xlim([-4 2]);
grid on;

%%Time Shifting the impluse response h(t-tau)====
t = -1;
subplot(10,2,4);
plot(-th+t,h,'Color','blue','LineWidth',1);
title('Impulse Response(Time Shifting when t = -1)');
legend('h(t-\tau)');
ylim([0 2.5]);
xlim([-6 2]);
grid on;

%Combine the signals for convolution
%%Fist Step: Zero Overlap
subplot(10,2,5);
plot(tx,x,'red',-th+t,h,'blue','LineWidth',1);
title('y(t) = x(t)*h(t) when t<0');
legend('x(\tau)','h(t-\tau)');
ylim([0 2.5]);
xlim([-6 4]);
grid on;

%Shifted towards the impulse when 0<t<1 
%%Second step: Partial Overlap
t = 0.5;
subplot(10,2,6);
plot(tx,x,'red',-th+t,h,'blue','LineWidth',1);
title('y(t) = x(t)*h(t) when t>0(Convolution Starting)');
legend('x(\tau)','h(t-\tau)');
ylim([0 2.5]);
xlim([-3 4]);
grid on;


%Shifted towards the impulse when 1<t2 
%%Third step: Partial Overlap
t = 1.5;
subplot(10,2,7);
plot(tx,x,'red',-th+t,h,'blue','LineWidth',1);
title('y(t) = x(t)*h(t) when 1<t<2');
legend('x(\tau)','h(t-\tau)');
ylim([0 2.5]);
xlim([-3 4]);
grid on;

%Shifted towards the impulse when 2<t<3 
%%Fourth step: Partial Overlap
t = 2.5;
subplot(10,2,8);
plot(tx,x,'red',-th+t,h,'blue','LineWidth',1);
title('y(t) = x(t)*h(t) when 2<t<3');
legend('x(\tau)','h(t-\tau)');
ylim([0 2.5]);
xlim([-3 5]);
grid on;


%Shifted towards the impulse when 3<t
%%Fifth step: Zero Overlap
t = 3.5;
subplot(10,2,9);
plot(tx,x,'red',-th+t,h,'blue','LineWidth',1);
title('y(t) = x(t)*h(t) when 3<t');
legend('x(\tau)','h(t-\tau)');
ylim([0 3]);
xlim([-3 5]);
grid on;


%%COmputing Integral
%%overlapping when 0<t<1;
%%1st step Convolution
syms t r    %r=time interval
f = t-r;  %f=function
y = int(f,r,0,t);    %f=function,r=time interval, 0,t=intregal limit

%%overlapping when 1<t<2;
%%2nd step Convolution
syms t r    
f = t-r;  
y = int(f,r,0,1);


%%overlapping when 1<t<2;
%%2nd step Convolution
syms t r    
f = t-r;  
y = int(f,r,t-2,1);


%%Output of the Convolution
t1 = 0:0.1:1;
t2 = 1:0.1:2;
t3 = 2:0.1:3;
y1 = (t1.*t1)/2;
y2 = t2-0.5;
y3 = (-0.5.*t3.*t3) + t3 + 1.5;
subplot(10,2,10);
plot(t1,y1,t2,y2,t3,y3,'LineWidth',1);
legend('x(\tau)','h(t-\tau)');
ylim([0 2]);
xlim([-3 5]);
title('Convolution of the signal Output y(t)');
grid on;