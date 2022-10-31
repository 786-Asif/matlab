clear all;
close all;
clc;
syms t;
n=input('enter the maximum limit of k:');
    x=@(t)(y(t).*exp(-j*k*w*t));
    a(i)=integral(x,0,T)/T;
    i=i+1;
end
l=1;
p=-n:n;
w=input('enter the maximum frequency:');
T=(2*pi)/w;
q=input('enter the function in t:');
y=inline(q);
a=[];
i=1;
for k=-n:n
i=1;
x1=[];
k=1;
%RECONSTRUCTION
for t=0:0.1:10
    x1(k)=0;
    for i=1:2*n+1
        x1(k)=x1(k)+a(i)*exp(j*p(i)*w*t);
    end
    k=k+1;
end
subplot(3,1,1)
stem((-n:n),abs(a));
title('magnitude');
xlabel('k');
ylabel('a(k)');
subplot(3,1,2)
stem((-n:n),angle(a));
title('magnitude');
xlabel('k');
ylabel(' phasea(k)');
subplot(3,1,3)
stem(0:0.1:10 ,x1);
title('reconstruction');
xlabel('t');
ylabel('x(t)');











