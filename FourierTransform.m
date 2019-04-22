%% To perform Fourier Transform of CT Elementary Signals
%%
clc;
clear all;
close all;
syms t w

%%
x1 = exp(-2*t)*heaviside(t);
f1 = fourier(x1,t,w)
%%
x2 = dirac(t);
f2 = fourier(x2,t,w);
%%
x3 = sin(t);
f3 = fourier(x3,t,w)
%%
x4 = cos(2*pi*t);
f4 = fourier(x4,t,w)
%%
x5 = 1*(heaviside(t+4)-heaviside(t-4));
f5 = simplify(fourier(x5,t,w))
%%
x6 = 2/(t+t*t);
f6 = fourier(x6,t,w)
%%
x7 = exp(-1*abs(t));
f7 = fourier(x7,t,w)
%%
x8 = dirac(t-2);
f8 = fourier(x8,t,w)
%%
x9 = 1;
f9 = fourier(x9,t,w)
%%
x10 = sign(t);
f10 = fourier(x10,t,w)
%%
x11 = heaviside(t);
f11 = fourier(x11,t,w)
%%
x12 = 4*sinc(t);
f12 =simplify(fourier(x12,t,w))

