
%unit step function.
clear all;
close all;
clc;
n=-5:5;
u=[zeros(1,5) ones(1,6)];
stem(n,u);
axis([-12 12 -2 2]);
xlabel('time interval');
ylabel('Amplitude');
title('unit(t)');
