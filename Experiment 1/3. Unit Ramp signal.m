%Continuous Time Unit Ramp Signals
t = 0:0.5:10;
u = t.*(t>=0);
subplot(411);
grid on;
plot(t,u);
title('(ix)Continuous Time Unit Ramp Signals');
xlabel('<--t-->');
ylabel('u[r]');


%Discrete Time Unit Ramp Signals
n = 0:0.5:10;
u = n.*(n>=0);
subplot(412);
grid on;
stem(n,u);
title('(x)Discrete Time Unit Ramp Signals');
xlabel('<--n-->');
ylabel('u[r]');