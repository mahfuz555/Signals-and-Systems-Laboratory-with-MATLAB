%Continuous Time Sinosoidal Signal
A=3;
w = 3*pi;
phase = pi/3;
T =(2*pi)/w;
t = 0:0.01:4*T;
x = A*cos(w*t + phase);
grid on;
subplot(411);
plot(t,x,'black');
title('(i)Continuous Time Sinusoidal Signal', 'color','black');
xlabel('<---range of t --->');
ylabel('x(t)');



%Discrete Time Sinosoidal Signal
range_of_n = 0:0.05:4*T;
discrete_time_sinusoidal_signal =  A*cos(w*range_of_n + phase);
subplot(412);
grid on;
stem(range_of_n,discrete_time_sinusoidal_signal,'black');
title('(ii)Discrete Time Sinusoidal signal','color','black');
xlabel('<---range of n --->');
ylabel('x[n]');



%Real Exponential Signals
A = 3;
t = 0:0.1:3;
x = A*exp(0.8*t);
subplot(413);
grid on;
plot(t,x,'black');
title('(iii)Real Exponential Signals','color','black');
xlabel('<---range of t --->');
ylabel('x(t)');


%Complex Exponential Signal 
t = -20:20;
alfa = -0.1+0.3j;
x = exp(alfa*t);
subplot(414);
grid on;
plot(t,imag(x),'black');
title('(iv)Complex Exponential Signals','color','black');
xlabel('<--range of t-->');
ylabel('x(t)');


