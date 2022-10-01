%Continuous Time Unit Impulse Signal
t = -3:0.01:4; 
x = [t==0];
subplot(411);
grid on;
plot(t,x); 
title('(v)Continuous Time Unit Impulse Signal');
xlabel('<--range of t-->');
ylabel('x(t)');



%Discrete Time Unit impulse Signals
n = -3:4; 
x = [n==0]; 
subplot(412);
grid on;
stem(n,x); 
title('(vi)Discrete Time Unit Impulse Signals');
xlabel('<--range of n-->');
ylabel('x[n]');




%Continuous Time Unit Step Signals
 t = -3:0.01:3;
 u = [t>=0];  %u(t)
 subplot(413);
 grid on;
 plot(t,u);
 axis([-3 3 -2 2]); %X and Y axis cordinate
 title('(vii)Unit step signal');
 xlabel('<--- t --->');
 ylabel('u(t)');




%Discrete Time Unit Step Signals 
n = -3:4; 
u = [n>=0]; %u[n]
subplot(414);
grid on;
stem(n,u);
title('(viii)Discrete Time Unit Step Signals'); 
xlabel('<--n-->');
ylabel('u[n]');




