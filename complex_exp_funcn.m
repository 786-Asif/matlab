clear all;
close all;
clc;
% y=aexp^(cn)
n=1:50;
a=2;
c=-(1/12)+(pi/6)*j;
y=a*exp(c*n);
plot(n,y);

