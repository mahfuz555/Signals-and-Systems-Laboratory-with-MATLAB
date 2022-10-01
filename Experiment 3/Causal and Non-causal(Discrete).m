clc;
clear all;
t1 = -3:.5:0;
x1 = zeros(size(t1));
t2 = 0:.5:1;
x2 = ones(size(t2));
t3 = 1:.5:3;
x3 = zeros(size(t3));
t = [t1 t2 t3];
x = [x1 x2 x3];
subplot(521);
stem(t,x,'black','LineWidth',1);
title('Causal Systems(Depends on the Present input) y(t) = x(t) when n = 0;');
legend('y(n)=x(n)');
grid on;
xlim([-4 4]);
ylim([-1 2]);

subplot(522);
stem(t-1,x,'black','LineWidth',1);
title('Causal Systems(Depends on the Past input) y(n) = x(n-1) when n = -1;');
legend('y(n)=x(n-1)');
grid on;
xlim([-4 4]);
ylim([-1 2]);

subplot(523);
stem(t+t-1,x,'black','LineWidth',1);
title('Causal Systems(Depends on the Present,Past input)');
legend('y(n)=x(n)+x(n-1)');
grid on;
xlim([-4 4]);
ylim([-1 2]);


subplot(524);
stem(t+1,x,'black','LineWidth',1);
title('Non-Causal Systems(Depends on the future input) y=x(n+1)when n = +1;');
legend('y(n)=x(n+1)');
grid on;
xlim([-4 4]);
ylim([-1 2]);

subplot(525);
stem(t+t-1+t+1,x,'black','LineWidth',1);
title('Non-Causal Systems(Depends on the present, past and Future)');
legend('y(n)=x(n)+x(n-1)+x(n+1)');
grid on;
xlim([-4 4]);
ylim([-1 2]);