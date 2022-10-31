clear all;
close all;
clc;
t=-2*pi:0.1:2*pi;
y=sin(t);
plot(t,y)
axis([-8 8 -1.5 1.5])
ylabel("amplitude")
xlabel("time")
