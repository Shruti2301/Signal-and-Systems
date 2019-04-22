%% System Classification

%% 
clc;
clear all;
close all;
%% Time Variant/Time Invariant
sim('Exp7.slx');

figure()
plot(tout,s1);
hold on;
plot(tout,s2);
title('y(t)=x(t)cos(wt)');
legend('s1','s2');
ylabel('Amplitude');
xlabel('Time');


%% Time Variant/Time Invariant

figure()
plot(tout,s3);
hold on;
plot(tout,s4);
title('y(t)=2x(t)+1');
legend('s3','s4');
ylabel('Amplitude');
xlabel('Time');

%% Linear/Non-Linear

figure()
plot(tout,s5);
hold on;
plot(tout,s6);
title('y(t)=2x(t)+1 with step');
legend('s5','s6');
ylabel('Amplitude');
xlabel('Time');