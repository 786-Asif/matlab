clear all;
close all;
clc;
a= audiorecorder(8000,8,1);
recordblocking(a,4);
b=getaudiodata(a);
plot(b);


