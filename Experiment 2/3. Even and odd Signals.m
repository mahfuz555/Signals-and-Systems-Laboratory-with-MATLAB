%Declare Main Signal x(t)....
clc; 
clear all;
close all;

%%Main Signal x(t)
t = 0:0.1:5;
x = t.*exp(-t);
subplot(411);
plot(t,x,'Color','black','LineWidth',1);
title('Main signal for Even and Odd signals');
legend('x(t)');
grid on;

%%Even Signal...
t = 0:0.1:5;
xe = 0.5*t.*(exp(-t)+exp(t));       %%xe = 1/2[x(t)+x(-t)]
subplot(412);
plot(t,xe,'Color','black','LineWidth',1);
title('Even Signals');
legend('xe(t)');
grid on;

%%Odd Signals
t = 0:0.1:5;
xo = 0.5*t.*(exp(-t)-exp(t));         %%xo = 1/2[x(t)-x(-t)]
subplot(413);
plot(t,xo,'Color','black','LineWidth',1);
title('Odd Signals');
legend('xo(t)');
grid on;

%%Combine the Even and Odd Signals
t=0:0.1:5;
x = xe+xo;                            %%x = xe+xo;
subplot(414);
plot(t,x,'Color','black','LineWidth',1);
title('Back to Main Signals');
legend('x(t) = xe(t)+xo(t)');
grid on;
