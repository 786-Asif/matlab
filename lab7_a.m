clear all;
close all;
clc;
syms t w;
x=input('enter the function in t');
y=inline(x);
y1=@(t,w)y(t).*exp(-j*w*t);
a=input('enter the lower limit');
b=input('enter the upper limit');
n=input('enter the range of w(-n:n)');
x=@(w)integral(@ (t)y1(t,w),a,b);
i=1;
for w=-n:n
    A(i)=x(w);
    i=i+1;
    
end
subplot(2,1,1)
plot(-n:n ,abs(A));
subplot(2,1,2)
plot(-n:n,angle(A));title('x(w)');
xlabel('w');
ylabel('x(w)');
title('phse of x(w)');
xlabel('w');
ylabel('phase of x(w)');





