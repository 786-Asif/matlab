clear all;
close all;
clc;
x=linspace(-1,1,100);
y=sqrt(1-(x.^2));
a=linspace(2,4,100);
b=sqrt(1-(a-3).^2);
c=linspace(1,1.5,25);
y1=2*(1-c);
d=linspace(1.5,2,25);
y2=(d-2)/0.5;
z1=[x c];
z2=[z1 d];
z=[z2 a];
q1=[y y1];
q2=[q1 y2];
q=[q2 b];
subplot(4,2,[1 2]);
plot(z,q)
xlabel('z values');
ylabel('q values');
title('original signal x(t)');
grid on;

subplot(4,2,3);
plot(z.*0.5,q);
title('x(2t)');
xlabel('z values');
ylabel('q values');

subplot(4,2,4);
plot(z-2,q);
title('x(t+2)');
grid on;

subplot(4,2,5);
plot(z,q+2);
title('x(t)+2');
grid on;

subplot(4,2,7);
plot(z,-q+2);
title('-x(t)+2');
grid on;

subplot(4,2,6);
plot(z,-q);
title('-x(t)');
grid on;

subplot(4,2,8);
plot(-z,q);
title('x(-t)');
grid on;







