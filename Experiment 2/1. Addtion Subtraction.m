%Let two basic signals equations
t = 1:0.01:6*pi;
x1 = cos(3*t);
x2 = 2*sin(t);
subplot(421);
plot(t,x1);
grid on;
title('Signal No 1: X1(t) = cos(3t) ');
subplot(422);
grid on;
plot(t,x2);
title('Signal No 1: X2(t) = 2sin(t)');



%Addition of two signal
xa = x1+x2;
subplot(413);
grid on;
plot(t,xa);
title('Addition of two signal[ y(t) = x1(t) + x2(t) ]');


%Subtraction of two signal
xs = x1-x2;
subplot(414);
grid on;
plot(t,xs);
title('Subtraction of two signal[ y(t) = x1(t) - x2(t) ]');


