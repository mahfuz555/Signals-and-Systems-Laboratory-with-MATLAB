%%Given signal...
%%x(t) = exp(-a*t)*u(t)

%%Plot the time domain 
t = -5:0.01:5
a = 1;
x = exp(-a*t).*heaviside(t);
subplot(4,1,1);
plot(t,x,'color','black','LineWidth',1);
xlabel('<---t--->');
ylabel('x(t)');
title('Time domain of the signal');
grid on;


%%Frequency domain of the time domain signal....
w = -5:0.01:5
j = sqrt(-1);
X = 1./(a+j*w)
subplot(4,1,2);
plot(w,real(X),'color','black','LineWidth',1);
xlabel('<---w--->');
ylabel('X(jw)');
title('Frequency domain of the signal');
grid on;

%%Magnitude spectrum of Frequency domain signal...
subplot(4,1,3);
plot(w,abs(X),'color','black','LineWidth',1);
ylabel('X(jw)');
title('Magnitude spectrum of Frequency domain signal');
grid on;


%%Phase spectrum of Frequency domain signal...
subplot(4,1,4);
plot(w,angle(X),'color','black','LineWidth',1);
ylabel('<X(jw)');
title('Phase spectrum of Frequency domain signal');
grid on;

