%% Operations on Signals(2)
clc;
clear all;
close all;
syms t;
t = -10:1/1000:10;
u = @(t) t>=0;
%% Plot x(t)
figure()

x = @(t) u(t) - u(t-4)

plot(t,x(t))
ylim([-2,2])
xlabel('Time');
ylabel('Amplitude');
title('x(t)');

%% Fold x(t)
figure()
plot(t,x(-t))
ylim([-2,2])
xlabel('Time');
ylabel('Amplitude')
title('x(-t)');

%% Differentiate x(t)
figure()
d = diff(x(t));
plot(t(:, 1:length(d)),d)
ylim([-2,2])
xlabel('Time');
ylabel('Amplitude')
title('Differentiated');

%% Integrate x(t)
figure()

i = cumsum(x(t));
plot(t(:,1:length(i)),i);
ylim([-2,2])
xlabel('Time');
ylabel('Amplitude')
title('Integrated');

%% Plot a sine wave y(t) and multiply it with x(t)
figure()
Freq = 0.20;
Freq1 = 10*Freq;

y = @(t) 2 *sin(2*pi*Freq*t);

plot(t,y(t).*x(t))
ylim([-3,3])
xlabel('Time');
ylabel('Amplitude')
title('y(t) * x(t)');

%% Compress Signal x(t) by a factor of 2
figure()
plot(t,x(2*t))
ylim([-2,2])
xlabel('Time');
ylabel('Amplitude')
title('Compressed');

%% Expand the Signal by a factor of 1.5
figure()
plot(t,x(t/1.5))
ylim([-2,2])
xlabel('Time');
ylabel('Amplitude')
title('expanded');

%% Divide Signal y(t) by Compressed Signal
figure()
d = y(t)./x(2*t);
plot(t,d);
axis([-5 5 -2 2]);
xlabel('Time');
ylabel('Amplitude')
title('Divided y(t) by x(2t)');

