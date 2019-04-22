%% Convolution Sum
%%
clc;
clear all;
close all;
%% Without using conv

%First Sequences
x = [1 2 3];
l1 = 0;
u1 = length(x)-1;
x1 = l1:1:u1; %Limit of sequence x(n)

%Second Sequence
h = [2 2 2 2];
l2 = 0;
u2 = length(h) - 1;
h1 = l2:1:u2; %Limit of sequence h(n)

L = l1+l2;
U = u1+u2;

a = L:1:U;  % Limit of output sequence y(n)

m = length(x);
n = length(h);

X = [x,zeros(1,n)];
subplot(311)
disp('x(n) is:')
disp(x)
stem(x1,x)
xlabel('n')
ylabel('x(n)')
title('First Sequence')


H = [h,zeros(1,m)];
subplot(312)
disp('h(n) is:')
disp(h)
stem(h1,h)
xlabel('n');
ylabel('h(n)');
title('Second Sequence');

for i = 1:n+m-1
    Y(i)=0;
    for j = 1:m
        if((i-j+1)>0)
            Y(i) = Y(i) + X(j) * H(i-j+1);
        else
        end
    end
end

subplot(313)
disp('y(n) is:')
disp(Y)
stem(a,Y)
xlabel('n');
ylabel('y(n)');
title('Output Sequence');

%% Using Conv

x= [1 2 3];
h =[2 2 2 2];
nx = 0:1:2;
nh = 0:1:3;

figure()

subplot(311)
stem(nx,x);
xlabel('n');
ylabel('x(n)');
title('First Sequence');

subplot(312)
stem(nh,h);
xlabel('n');
ylabel('x(n)');
title('Second Sequence');

m = length(x);
n = length(h);

N = (0:1:length(x)+length(h)-2)

subplot(313)
c = conv(x,h);
stem(N,c,'k');
xlabel('n');
ylabel('y[n]');
title('Output Sequence');