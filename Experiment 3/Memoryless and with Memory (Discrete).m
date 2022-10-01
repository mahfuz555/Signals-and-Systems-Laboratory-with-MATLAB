t1 = -3:0.5:0;
x1 =zeros(size(t1));
t2 = 0:.5:1;
x2 = ones(size(t2));
t3 = 1:.5:3;
x3 = zeros(size(t3));
t = [t1 t2 t3];
x = [x1 x2 x3];
subplot(411);
stem(t,x,'black','LineWidth',1);
grid on;
title('Static (Memoryless)Systems which amplitude is fixed');
xlim([-4 4]);
ylim([-1 2]);
legend('y(n)=x(n)');


subplot(412);
stem(t,3*x,'black','LineWidth',1);
grid on;
title('Dynamic (with Memory)Systems which amplitude is changable.');
xlim([-4 4]);
ylim([-1 4]);
legend('y(n)=2x(n)');