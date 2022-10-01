clc;
clear all;
t1 = -3:.1:0;
x1 = zeros(size(t1));
t2 = 0:.1:1;
x2 = ones(size(t2));
t3 = 1:.1:3;
x3 = zeros(size(t3));
t = [t1 t2 t3];
x = [x1 x2 x3];
subplot(521);
plot(t,x,'black','LineWidth',1);
title('Causal Systems(Depends on the Present input) y(t) = x(t) when t = 0;');
legend('y(t)=x(t)');
grid on;
xlim([-4 4]);
ylim([-1 2]);

subplot(522);
plot(t-1,x,'black','LineWidth',1);
title('Causal Systems(Depends on the Past input) y(t) = x(t-1) when t = -1;');
legend('y(t)=x(t-1)');
grid on;
xlim([-4 4]);
ylim([-1 2]);

subplot(523);
plot(t+t-1,x,'black','LineWidth',1);
title('Causal Systems(Depends on the Present,Past input)');
legend('y(t)=x(t)+x(t-1)');
grid on;
xlim([-4 4]);
ylim([-1 2]);


subplot(524);
plot(t+1,x,'black','LineWidth',1);
title('Non-Causal Systems(Depends on the future input) y=x(t+1)when t = +1;');
legend('y(t)=x(t+1)');
grid on;
xlim([-4 4]);
ylim([-1 2]);

subplot(525);
plot(t+t-1+t+1,x,'black','LineWidth',1);
title('Non-Causal Systems(Depends on the present, past and Future)');
legend('y(t)=x(t)+x(t-1)+x(t+1)');
grid on;
xlim([-4 4]);
ylim([-1 2]);