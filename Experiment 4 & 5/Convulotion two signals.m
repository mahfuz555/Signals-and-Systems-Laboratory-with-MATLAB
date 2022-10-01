%======The analytical way of finding Convolution Integral========
%h(t) = 1-t, 0<=t<=1
%x(t) = 1,   0<=t<=2.

%%Step 1: Replace t with tau

%======Input Signal======%
th1 = -2:0.1:0;
th2 = 0:0.1:2;
th3 = 2:0.1:4;
tx = [th1 th2 th3];
h1 = zeros(size(th1));
h2 = ones(size(th2));
h3 = zeros(size(th3));
x = [h1 h2 h3];
subplot(10,2,1);
plot(tx,x,'Color','red','LineWidth',1);
title('Input Signal');
legend('x(\tau)');
ylim([0 2]);
xlim([-3 4]);
grid on;

%======Impluse Response======%
th1 = -2:0.1:0;
th2 = 0:0.1:1;
th3 = 1:0.1:4;
th = [th1 th2 th3];
h1 = zeros(size(th1));
h2 = 1-th2;
h3 = zeros(size(th3));
h = [h1 h2 h3];
subplot(10,2,2);
plot(th,h,'Color','blue','LineWidth',1);
title('Impulse Response');
legend('h(\tau)');
ylim([0 2]);
grid on;


%%======Time Reversal of the Impluse Response======%
subplot(10,2,3);
plot(-th,h,'Color','blue','LineWidth',1);
title('Impulse Response(Time Reversal)');
legend('h(-\tau)');
ylim([0 2]);
xlim([-3 4]);
grid on;



%%Time Shifting the impluse response h(t-tau)====
t = -2;
subplot(10,2,4);
plot(-th+t,h,'Color','blue','LineWidth',1);
title('Impulse Response(Time Shifting when t = -2)');
legend('h(t-\tau)');
ylim([0 2]);
xlim([-3 4]);
grid on;


%Combine the signals for convolution
%%Fist Step: Zero Overlap
subplot(10,2,5);
plot(tx,x,'red',-th+t,h,'blue','LineWidth',1);
title('y(t) = x(t)*h(t) when t<0');
legend('x(\tau)','h(t-\tau)');
ylim([0 2]);
xlim([-3 4]);
grid on;

%Shifted towards the impulse when 0<t<1 
%%Second step: Partial Overlap
t=0.5
subplot(10,2,6);
plot(tx,x,'red',-th+t,h,'blue','LineWidth',1);
title('y(t) = x(t)*h(t) when 0<t<1');
legend('x(\tau)','h(t-\tau)');
ylim([0 2]);
xlim([-3 4]);
grid on;
%%The following code produce the shadowed area plot
T = 1;
r = 0:0.001:t
a = 1/T*r+0.5;
%a = 1/T*r+0.5
hold on;
area(r,a);
hold off;



%%Third Stage: Complete Overlap when 1<t<2
t= 1.5
subplot(10,2,7);
plot(tx,x,'red',-th+t,h,'blue','LineWidth',1);
title('y(t) = x(t)*h(t) when 1<t<2');
legend('x(\tau)','h(t-\tau)');
ylim([0 2]);
xlim([-3 4]);
grid on;
%%The following code produce the shadowed area plot
T = 1;
r = t-T:0.1:t
a = 1/T*r+1-t/T;
hold on;
area(r,a);
hold off;




%%Fourth Stage: Exit-partial Overlap
t= 2.5
subplot(10,2,8);
plot(tx,x,'red',-th+t,h,'blue','LineWidth',1);
title('y(t) = x(t)*h(t) when 2<t<3');
legend('x(\tau)','h(t-\tau)');
ylim([0 2]);
xlim([-3 4]);
grid on;
%%The following code produce the shadowed area plot
T = 1;
r = t-T:0.1:2
a = 1/T*r+1-t/T;
hold on;
area(r,a);
hold off;

%%Fifth Stage: Zero Overlap
t= 3.5
subplot(10,2,9);
plot(tx,x,'red',-th+t,h,'blue','LineWidth',1);
title('y(t) = x(t)*h(t) when 3<t<4');
legend('x(\tau)','h(t-\tau)');
ylim([0 2]);
xlim([-3 4]);
grid on;



%%COmputing Integral
%%Initial-Partial overlapping
syms t r    %r=time interval
f = 1-t+r ;  %f=function
y = int(f,r,0,t);    %f=function,r=time interval, 0,t=intregal limit



%%Complete overlaping
syms t r
f = 1-t+r;  
y = int(f,r,t-1,t);


%%Exit-partial overlaping
syms t r
f = 1-t+r;  
y = int(f,r,t-1,2);

%%Output of the Convolution
t1 = 0:0.1:1;
t2 = 1:0.1:2;
t3 = 2:0.1:3;
y1 = -(t1.*(t1 - 2))/2;
y2 = 0.5*ones(size(t2));
y3 = ((t3 - 3).^2/2);
subplot(10,2,10)
plot(t1,y1,t2,y2,t3,y3,'LineWidth',1);
ylim([0 0.6])
title('Convolution of the signal Output y(t)');