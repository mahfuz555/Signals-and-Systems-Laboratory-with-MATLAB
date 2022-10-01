%Let two basic signals equations
t = 1:0.01:6*pi;
x1 = cos(3*t);
x2 = 2*sin(t);

%Multiplication of two signal
xm = x1.*x2;
subplot(411);
grid on;
plot(t,xm);
title('Multiplication of two signal[ y(t) = x1(t)x2(t) ]');