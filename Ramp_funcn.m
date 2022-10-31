clear all;
close all;
clc;
n=-10:10;
u=[zeros(1,10) ones(1,11)];
r=n.*u;
subplot(2,1,1);
plot(n,r);
xlabel("time");
ylabel("Amplitude");
title("continuos function");

subplot(2,1,2);
stem(n,r);
xlabel("time");
ylabel("Amplitude r(t)");
title("discrete function");

