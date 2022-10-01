%Convolution for Continuous Time signals
%======The analytical way of finding Convolution Summation========
%h(t) = 1-t, 0<=n<=1
%x(t) = 1,   0<=n<=2.
%

step = 0.5;
n = 0:step:2;
x = ones(size(n));
subplot(311);
stem(n,x,'Color','blue','LineWidth',1);
ylim([0 2]);
xlim([-3 4]);
grid on;
title('Input Signal');
t1 = 0:step:1;
t2 = 1+step:step:2;
th = [t1 t2];
h1 = 1-t1;
h2 =zeros(size(t2));
h = [h1 h2];
subplot(312);
stem(th,h,'Color','red','LineWidth',1);
title('Impulse Response');
ylim([0 2]);
xlim([-3 4]);
grid on;


y = conv(x,h);
subplot(313);
stem(ty,y,'Color','Magenta','LineWidth',1);
title('Output of Convolution of two signals');
ylim([0 2]);
xlim([0 5]);
grid on;