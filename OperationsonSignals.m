%% Operations on Signals(1)
%%
clc;
clear all;
close all;
%%
t = 0:1/1000:0.1;
Freq1 = 30;
Time1 = 1/Freq1;
Amp1 = 1;

Freq2 = 60;
Time2 = 1/Freq2;
Amp2 = 1;

Signal1 = Amp1 * sin(2*pi*Freq1*t);
Signal2 = Amp2 * sin(2*pi*Freq2*t);

Add = Signal1 + Signal2;
Mul = Signal1 .* Signal2;

subplot(311)
plot(t,Signal1);
hold on;
plot(t,Signal2);

title('Sine Wave');
xlabel('Time');
ylabel('Amplitude');

subplot(312)
plot(t,Add);

title('Addition');
xlabel('Time');
ylabel('Amplitude');

subplot(313)
plot(t,Mul);

title('Multiplication');
xlabel('Time');
ylabel('Amplitude');

%% Time Scaling,Shifting and Reversal of Sine Wave
t = 0:1/1000:0.1;
Freq1 =30;
Time1 = 1/Freq1;
Amp = 1;

figure()
subplot(411)
Signal1 = Amp * sin(2*pi*Freq1*t);
plot(t,Signal1)
title('Sine Wave');
xlabel('Time');
ylabel('Amplitude');

x1 = 1/100;

subplot(412)
Signal2 = Amp * sin(2*pi*Freq1*(t-x1));
plot(t,Signal2)
title('Shifting');
xlabel('Time');
ylabel('Amplitude');

subplot(413)
Signal3 = Amp * sin(2*pi*Freq1*(2*t));
plot(t,Signal3)
title('Scaling');
xlabel('Time');
ylabel('Amplitude');

subplot(414)
Signal4 = Amp * sin(2*pi*Freq1*(-t));
plot(t,Signal4)
title('Reversal');
xlabel('Time');
ylabel('Amplitude');

%% Add Two Sequences
x1 = [0,0,1,2,3,4,5];
x2 = [3,4,5,6,7,0,0];

n1 = -3:3;
figure()
subplot(411)
stem(n1,x1)
title('Sequence 1')

subplot(412)
stem(n1,x2)
title('Sequence 2')

Add = x1 + x2;
Mul = x1 .* x2;

subplot(413)
stem(n1,Add)
title('Addition')

subplot(414)
stem(n1,Mul)
title('Multiplication')

%% Scaling,Shifting,Reversal in Discrete Time
n1 = -10:0.7:10;
y1 = sin(n1);

figure()
subplot(411)
stem(n1,y1)
title('Sine Wave');
xlabel('Time');
ylabel('Amplitude');

subplot(412)
y2 = sin(n1-4);
stem(n1,y2)
title('Shifting');
xlabel('Time');
ylabel('Amplitude');

subplot(413)
y3 = sin(n1/2);
stem(n1,y3)
title('Scaling');
xlabel('Time');
ylabel('Amplitude');

subplot(414)
y4 = -y1;
stem(n1,y4)
title('Reversal');
xlabel('Time');
ylabel('Amplitude');

%% Even & Odd Components
n = -5:5;
seq1 = [0,0,0,0,0,1,1,1,1,1,1];
seq2 = [1,1,1,1,1,1,0,0,0,0,0]; 

figure()
subplot(411)
stem(n,seq1)
title('Sequence1')

subplot(412)
stem(n,seq2)
title('Sequence2')

xe = (seq1 + seq2)/2;
xo = (seq1 - seq2)/2;

subplot(413)
stem(n,xe)
title('Even Part')

subplot(414)
stem(n,xo)
 title('Odd Part')