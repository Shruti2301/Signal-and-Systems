%% Convolution Integral
clc;
clear all;
close all;
%% Using Conv()
t=-5:0.01:5;
h= 1.*(t>=0)&(t<=2);
plot(t,h)
n = length(h);

x = 1.*(t>=0)&(t<=3);
m = length(x);

subplot(311)
plot(t,h)
xlabel('Time');
ylabel('Amplitude');
title('Using Conv');

subplot(312)
plot(t,x);
xlabel('Time');
ylabel('Amplitude');
y = conv(x,h);

subplot(313)
plot(linspace(-10,10,length(y)),0.01*y)
xlabel('Time');
ylabel('Amplitude');

%% without using Conv()

for i = 1:n+m-1
    Y(i) = 0;

    for j = 1:m
        if((i-j+1)>0 && (i-j+1)<m)
        Y(i) = Y(i)+(x(j)*h(i-j+1));
        end
    end
end

figure();
plot(linspace(-10,10,length(y)),0.01*y);
xlabel('Time');
ylabel('Amplitude');
title('Without using Conv');


