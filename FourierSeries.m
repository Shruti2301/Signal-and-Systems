%% Implementation of Fourier Series
%%
clc; 
clear all;
close all;
syms t;
%%
T = 2;
N= 25;
wo =(2*pi/T);

f = heaviside(t) - heaviside(t-1);

figure(1)
ezplot(f,[0,2])
xlabel('Time')
ylabel('Amplitude')

a0_sym = (1/T)* int(f,t,0,T);
a0 = double(a0_sym);

for n = 1:N
    a_sym(n) = (2/T)*int(f*cos(n*wo*t),t,0,T);
    a(n) = double(a_sym(n));
    
    b_sym(n) = (2/T)*int(f*sin(n*wo*t),t,0,T);
    b(n) = double(b_sym(n));
end

tnum = 0:0.01:4;
fnum = a0;

for n = 1:N
    harmonics = a(n)*cos(n*wo*tnum)+b(n)*sin(n*wo*tnum);
    fnum = fnum + harmonics;
    
    pause(0.1)
    
 figure(2)
 plot(tnum,fnum)
 title('Fourier Series')
 xlabel('Time')
 ylabel('Amplitude')
end