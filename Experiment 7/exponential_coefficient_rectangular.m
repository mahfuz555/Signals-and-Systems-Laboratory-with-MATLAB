clc;
%%Calculation of the rectangular pulse of Exponential Fourier series...
fs=100;
T=2;
w0=(2*pi)/T;
k=-5:1/fs:5-1/fs;
y=square(w0*k,50);


%%Plot the signal....
subplot(2,1,1);
plot(k,y,'Color','black','LineWidth',1);
title('Periodic rectangular pulse for Exponential Fourier series..');
legend('x(t)');
ylim([-1.5 1.5]);
grid on;


%%Calculate the coefficients
syms t
syms w j positive;
X= int(1*exp(-j*w*t),t,0,4);

%%Plot the Discrete Spectrum....
Y =fft(y);
subplot(2,1,2);
stem(abs(Y),'Color','black');
title('Discrete Spectrum');
