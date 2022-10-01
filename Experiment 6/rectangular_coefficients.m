clc;
%%Calculation of the rectangular pulse of trigonometric Fourier series...
fs=100;
T=2;
w0=(2*pi)/T;
k=-6:1/fs:6-1/fs;
y=square(w0*k,50);

%%Plot the signal....
subplot(3,1,1);
plot(k,y,'Color','red','LineWidth',1);
title('Periodic rectangular pulse for trigonometric Fourier series..');
legend('x(t)');
ylim([-1.5 1.5]);
grid on;


%%Reconstruct the signal by combining the Fourier series cofficient with
%%appropiate weightings....
syms t
N=20;
n=1:N;

%%Take the coefficients of the signal..
a0=(1/T)*(int(1,t,0,1)+int(-1,t,1,2));
an=(2/T)*(int(1*cos(n*w0*t),t,0,1)+int(-1*cos(n*w0*t),t,1,2));
bn=(2/T)*(int(1*sin(n*w0*t),t,0,1)+int(-1*sin(n*w0*t),t,1,2));


F=a0;
for i=1:N;
   F = F+an(i)*cos(i*w0*k)+bn(i)*sin(i*w0*k); 
end

%%Plot the signal....
subplot(3,1,2);
plot(k,F,'Color','blue','LineWidth',1);
title('Reconstruct the signal using the coefficients...');
legend('x(t)');
ylim([-1.5 1.5]);
grid on;


%%Approximation of the main rectangular signal and Reconstruct signal
subplot(3,1,3)
plot(k,y,'red',k,F,'blue','LineWidth',1);
title('Approximation of two signals....');
legend('Real','Reconstuct');
ylim([-1.5 1.5]);
grid on;

