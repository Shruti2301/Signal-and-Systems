 %% Classification of Signals
 %%
 clc;
 clear all;
 close all;
 %%
figure(1)
Amp=1;
Freq=5;
Fsam=100;
Tsam = 1/Fsam;

t = 0:Tsam:1;
y = Amp*sin(2*pi*Freq*t);

subplot(211)
plot(t(1:100),y(1:100),'k','LineWidth',2);
grid on;
axis([0 1 -1.2 1.2])

title('Deterministic Signal');
xlabel('Time');
ylabel('Amplitude');

power_theoretical =(Amp^2/4)*2;
10*log10(power_theoretical/2);
n1 = -10:1:10;
y1 = Amp*sin(2*pi*1/10*n1);

subplot(212)
stem(n1,y1)
xlabel('Time(n)');
ylabel('Amplitude');
title('DT Deterministic Signal');

%% Random Signal
figure(2)

Amp = rand(200,1);
Freq =5;
Fsam = 100;
Tsam = 1/Fsam;
PhShift = 0;
t = 0:Tsam:1;

y=Amp*cos(2*pi*Freq*t+PhShift);
plot(t(1:100),y(1:100),'k','Linewidth',2);
grid on;
axis([0 1 -1.2 1.2])
title('Random Signal');
xlabel('Time');
ylabel('Amplitude');

%% Periodic Signal
figure(3)

Amp1 =1;
Amp2= 2;
Amp3 =3;

Freq1 = 5;
Freq2 = 10;
Freq3 = 15;

Fsam = 100;
Tsam = 1/Fsam;

PhShift =0;
t = 0:Tsam:1;

y = Amp1* sin(2*pi*Freq1*t+PhShift) + Amp2*sin(2*pi*Freq2*t+PhShift)+ Amp3*sin(2*pi*Freq3*t+PhShift);
subplot(211)
plot(t(1:100),y(1:100),'k','Linewidth',2);
grid on;

axis([0 1 -6.2 6.2])
title('Periodic Signal');
xlabel('Time');
ylabel('Amplitude');

y3 = Amp1* sin(2*pi*Freq1*n1+PhShift) + Amp2*sin(2*pi*Freq2*n1+PhShift)+ Amp3*sin(2*pi*Freq3*n1+PhShift);

subplot(212)
stem(n1,y3)
xlabel('Time(n)');
ylabel('Amplitude');
title('DT Periodic Signal');

%% Aperiodic Signal
figure(4)

Fsam =1000;
Tsam = 1/Fsam;
t = 0:Tsam:2;

y=chirp(t,0,1,5);  %start f =0Hz,cross f =5Hz at 1 sec;

subplot(211)
plot(t,y,'k','Linewidth',2)
grid on;

title('Aperiodic Signal')
xlabel('Time')
ylabel('Amplitude')

y1 = chirp(n1,0,1,5);
subplot(212)
stem(n1,y1);
title('DT Aperiodic Signal')
xlabel('Time(n)')
ylabel('Amplitude')

%% Energy and Power
figure(5);
syms t;

X = -2:0.5:10;
Y = exp(-X/2);
subplot(211)
plot(X,Y)

title('Energy Signal');
xlabel('Time');
ylabel('Amplitude');


Y1 =  exp(-n1/2);
subplot(212)
stem(n1,Y1);
title('DT Energy Signal');
xlabel('Time');
ylabel('Amplitude');

%% Plotting Power Signal
figure(5)

Fsam = 1024;
t = 0:1/Fsam:1-(1-Fsam);
Amp = 1;
Freq1 = 128;
x = Amp*sin(2*pi*Freq1*t);

subplot(211)
idx=1:128;
plot(t(idx),x(idx))
grid on;

title('Power Signal')
ylabel('Amplitude')
xlabel('Time')
axis tight

subplot(212)
idx1 = 1:50;
stem(t(idx1),x(idx1))
title('DT power signal')
ylabel('Amplitude')
xlabel('Time')

power_theoretical = (Amp^2/4)*2;
10*log10(power_theoretical/2)

%% Even & Odd Signals

t =-3:0.01:3;
x = @(t) exp(-t).*(t>0)+0.5*(t==0)

xe = (x(t) + x(-t))/2;
xo = (x(t) - x(-t))/2;

subplot(311)
plot(t,x(t))
title('Original signal')
ylabel('Amplitude')
xlabel('Time')

subplot(312)
plot(t,xe)
title('Even part of signal')
ylabel('Amplitude')
xlabel('Time')

subplot(313)
plot(t,xo)
title('Odd part of signal')
ylabel('Amplitude')
xlabel('Time')

%% Even Odd Discrete
figure()
n =-10:1:10;
x = @(n) exp(-n).*(n>0)+0.5*(n==0)

xe = (x(n) + x(-n))/2;
xo = (x(n) - x(-n))/2;

subplot(311)
stem(n,x(n))
title(' DT Original signal')
ylabel('Amplitude')
xlabel('Time')

subplot(312)
stem(n,xe)
title('Even part of signal')
ylabel('Amplitude')
xlabel('Time')

subplot(313)
stem(n,xo)
title('Odd part of signal')
ylabel('Amplitude')
xlabel('Time')

