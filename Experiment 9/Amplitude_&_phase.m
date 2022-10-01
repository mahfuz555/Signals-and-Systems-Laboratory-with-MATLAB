%Given square pulse 
%%t = -2:0.001:2;
%%xct = (t>=-1)-(t>=1);

t1 = -3:0.001:-1;
t2 = -1:0.001:1;
t3 = 1:0.001:3;

x1 = zeros(size(t1));
x2 = ones(size(t2));
x3 = zeros(size(t3));
 
t = [t1 t2 t3];
x = [x1 x2 x3];

subplot(4,1,1);
plot(t,x,'color','black','LineWidth',1);
ylim([0 1.5]);
xlabel('<---t--->');
ylabel('x(t)');
title('Given square pulse..');
grid on;

%%Amlitude of the square pulse
w = -2:0.001:2
t = 2;
X = 2.*t.*sinc(w.*t);
subplot(4,1,2);
plot(w,X,'black','LineWidth',1);
xlabel('<---w--->');
ylabel('X(jw)');
title('Fourier Transform of the signal');
grid on;

%%Determine absolute value of Fourier Transform
y = abs(X);     %%Absolute value of Fourier Transform
subplot(4,1,3);
plot(w,y,'black','LineWidth',1);
xlabel('<---w--->');
title('Amplitude of the signal that is(Amplitude = 4)');
grid on;

w = -2:0.001:2
phase = angle(X);
subplot(4,1,4);
plot(w,phase,'black','LineWidth',1);
xlabel('<---Phase--->');
title('Phase of the signal');
ylim([0 4]);
grid on;