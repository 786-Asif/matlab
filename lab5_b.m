clear all;
close all;
clc;
%complex function z=a+jb, a=coswn, b=jsinwn
%range of theta
th=-pi:0.1:pi;
%exponentia;l funct
x=exp(1i.*th);
a=real(x);
b=imag(x);
subplot(2,1,1);
plot3(a,b,th);
ylabel('imag(x)');
xlabel('real(x)');
zlabel('angular freq[-pi to pi]');
title('plotting real and img parts wrt angle (th)');
subplot(2,1,2);
plot(a,b);
xlabel('real(x)');
ylabel('imag (x)');
title('plotting [img part vs real part]');



    