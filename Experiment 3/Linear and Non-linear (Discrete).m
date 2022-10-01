clc;
clear all;
t =-3:0.1:3;
x1 = heaviside(t)-heaviside(t-1);   %x1(t)=u(t)-u(t-1) 
x2 = heaviside(t)-heaviside(t-2);   %x2(t)=u(t)-u(t-2)

a1 = 2; 
a2 = 3;
z = a1*x1+a2*x2;     % S{a1x1(t) + a2x2(t)
y = 2*z;
subplot(411);
stem(t,y,'black','LineWidth',1);
grid on;
legend('S[2*x1(n) + 3*x2(n)]');
title('Linear Systems when equation (i) & (ii) are equal');
xlabel('When S{a1x1(n) + a2x2(n)}----(i)');
ylim([-1 11]);

z1 =2*x1;  
z2 = 2*x2; 
y =a1*z1+a2*z2;   %a1S{x1(t)} + a2S{x2(t)}
subplot(412)
stem(t,y,'black','LineWidth',1);
legend('2*S[x1(n)] + 3*S[x2(n)]');
xlabel('When a1S[x1(n)] + a2S[x2(n)]----(ii)');
ylim([-1 11]); 

a1=3;
a2=-1;
z1 =2*x1;  
z2 = 2*x2; 
y =a1*z1+a2*z2;   %a1S{x1(t)} + a2S{x2(t)}
subplot(413)
stem(t,y,'black','LineWidth',1);
title('Non-linear Systems when equation (i) & (ii) are not equal');
legend('3*S[x1(n)] + -1*S[x2(n)]');
ylim([-10 11]); 

