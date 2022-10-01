%Time Scaling
t=0:0.01:20;
x = sin(t);
subplot(411);
grid on;
plot(t,x);
title('Main signal for Time scaling = x(t)');
xlabel('x(t)');

%Time Scaling
t=0:0.01:20;
x = sin(t/2);
subplot(412);
grid on;
plot(t,x);
xlabel('x(t/2)');

t=0:0.01:20;
x = sin(2*t);
subplot(413);
grid on;
plot(t,x);
xlabel('x(2t)');

