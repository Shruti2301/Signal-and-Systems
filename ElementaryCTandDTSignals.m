%% Generation of CT and DT Signals
%%
clc;
clear all;
close all;
%% Sine Wave
t = 0:0.15:10;
freq=0.20;
Amp = 2
x1 = Amp * sin(2*pi*freq*t);
figure()

subplot(211)
plot(t,x1);

xlabel('Time(t)')
ylabel('Amplitude');
title('Sine Wave');

n = 0:0.15:10;


x1 = Amp * sin(2*pi*freq*n);

subplot(212)
stem(n,x1);

xlabel('Time(n)')
ylabel('Amplitude');
title('DT Sine Wave');

%% Unit Step, Ramp, Impulse
t = (-1:0.01:1)';
n = (-5:5)';

impulse = t==0;
unitstep = t>=0;
ramp = t.*[t>=0];

impulse1 = n==0;
unitstep1 = n>=0;
ramp1 = n.*unitstep1;

figure()

subplot(211)
plot(t,impulse)
xlabel('Time(t)')
ylabel('Amplitude');
title('Unit Impulse');

subplot(212)
stem(n,impulse1)
xlabel('Time(n)')
ylabel('Amplitude');
title('DT Unit Impulse');


figure()
subplot(211)
plot(t,unitstep)
xlabel('Time(t)')
ylabel('Amplitude');
title('Unit Step');

subplot(212)
stem(n,unitstep1)
xlabel('Time(n)')
ylabel('Amplitude');
title('DT Unit Step');


figure()
subplot(211)
plot(t,ramp)
xlabel('Time(t)')
ylabel('Amplitude');
title('Unit Ramp');

subplot(212)
stem(n,ramp1)
xlabel('Time(n)')
ylabel('Amplitude');
title('DT Unit Ramp');

%% Rectangular Pulse
t1 = -1:0.001:1;
a = rectpuls(t1,0.2);

tT= -10:1:10;
b = rectpuls(tT,5);

figure()
subplot(211)
plot(t1,a)
xlabel('Time(t)')
ylabel('Amplitude');
title('Rectangular Pulse');

subplot(212)
stem(tT,b)
xlabel('Time(t)')
ylabel('Amplitude');
title('Rectangular Pulse');


%% Triangular Pulse
b = tripuls(t1,0.5);

figure()
subplot(211)
plot(t1,b)
xlabel('Time(t)')
ylabel('Amplitude');
title('Triangular Pulse');

subplot(212)
n5 = -5:1:5;
stem(n5,tripuls(n5,3))
xlabel('Time(n)')
ylabel('Amplitude');
title('DT Triangular Pulse');

%% Real Values Exponential
y = exp(2*t);
y1= exp(-2*t);

figure()
subplot(411)
plot(t,y,'r');
xlabel('Time(t)')
ylabel('Amplitude');
title('CT Expo Increasing');

subplot(412)
plot(t,y1,'r');
xlabel('Time(n)')
ylabel('Amplitude');
title('DT Expo Decreasing');

n6 = 0:1:10;
subplot(413)
stem(n6,exp(n6),'b');
xlabel('Time(n)')
ylabel('Amplitude');
title('DT Expo Increasing');

subplot(414)
stem(n6,exp(-n6),'b');
xlabel('Time(n)')
ylabel('Amplitude');
title('DT Expo Decreasing');

%% Complex Values Exponential

figure()

t2 = 0:50;
a = 1/12;
b = pi/4;
c = a + b*1i;
d = -a +b *1i;

amp = 4;
x1 = amp * exp(c*t2);
x2 = amp * exp(d*t2);

subplot(411)
plot(t2,x1);
xlabel('Time(t)')
ylabel('Amplitude');
title('CT Complex Expo Increasing');

subplot(412)
plot(t2,x2);
xlabel('Time(t)')
ylabel('Amplitude');
title('CT Complex Expo Decreasing');

n = 1:40;
x1 = amp * exp(c*n);
x2 = amp * exp(d*n);

subplot(413)
stem(n-1,real(x1))
xlabel('Time(n)')
ylabel('Amplitude');
title('DT Complex Expo Increasing');

subplot(414)
stem(n-1,real(x2))
xlabel('Time(n)')
ylabel('Amplitude');
title('DT Complex Expo Decreasing');

%% Signum 
figure()

x = [-5 -eps(1) 0 eps(1) 5]
y = sign(x);

subplot(211)
plot(x,y)
ylim([-2 2])
xlabel('Time(t)')
ylabel('Amplitude');
title('CT Signum');

x1 = [-5 -4 -3 -2 -1 0 1 2 3 4 5]
y1 = sign(x1)
subplot(212)
stem(x1,y1)
xlabel('Time(n)')
ylabel('Amplitude');
title('DT Signum');

%% Sinc Function
figure()
x = linspace(-5,5);
y = sinc(x)

subplot(211)
plot(x,y)
xlabel('Time(t)')
ylabel('Amplitude');
title('CT Sinc');

n = -5:0.5:5;
subplot(212)
y1 = sinc(n)
stem(n,y1)
xlabel('Time(n)')
ylabel('Amplitude');
title('DT Sinc');






