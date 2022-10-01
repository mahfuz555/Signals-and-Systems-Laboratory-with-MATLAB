clc;
clear all; 
close all;

%%Generate a Continuous time signal with 5Hz Frequency
fm = 10;        %%maximum frequency of message signal
dt = 0.001;
t = 0:dt:1;
x = sin(2*pi*fm*t);
subplot(5,1,1);
plot(t,x,'black','LineWidth',1);
xlabel('<---t--->');
ylabel('Amplitude');
title('Continuous time Siganl');

%%Under Sampling....
fs = 5;   %%Condition of under sampling -----fs<2fm     %%Tu = 0.2
nu = 0:(1/fs):1;
xu = sin(2*pi*fm*nu);
subplot(5,1,2);
stem(nu,xu,'black','LineWidth',1);
xlabel('<---t--->');
ylabel('Amplitude');
title('Under Sampling(sampling rates less than Nyquist Rate)');


%%Reconstruction with sampling rates less than Nyquist Rate....
t2 = linspace(0,max(nu),(max(nu)/dt));
xr = interp1(nu,xu,t2);
subplot(5,1,3);
plot(t2,xr,'black','LineWidth',1);
xlabel('<---t--->');
ylabel('Amplitude');
title('Reconstruction signal with sampling rates less than Nyquist Rate(Alising Effect)');


%%Nyquist Rate or Over Sampling
fs = 20;        %%Condition of over sampling-----fs=2fm
nn = 0:(1/fs):1;       %% Tn = 1/fs = 0.05
xn = sin(2*pi*fm*nn);
subplot(5,1,4);
stem(nn,xn,'black','LineWidth',1);
xlabel('Samples of continuous time signal.');
ylabel('Amplitude');
title('Nyquist Rate/Over Sampling');

%%Reconstruction of Signal
t2 = linspace(0,max(nn),(max(nn)/dt));
xr = interp1(nn,xn,t2);
subplot(5,1,5);
plot(t2,xr,'black','LineWidth',1);
xlabel('<---t--->');
ylabel('Amplitude');
title('Reconstruction of Sampled Signal with Nyquist Rate');


