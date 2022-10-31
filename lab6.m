clear all;
close all;
clc;
t=-20:20;
ak1=[];
i=1;
for k=-20:20
    ak1(i)=((-1)^k-1)/(k*pi)^2;
    ak2(i)=(1-(-1^k))/(2*1i*pi*k);
    ak3(i)=(-1)/(2*1i*pi*k);
    ak4(i)=1/(k*pi);
    ak8(i)=((-1)^k-1)/(-1i*2*pi*k);
    ak9(i)=(1-exp(-1))/(1+1i*pi*2*k);
    ak10(i)=(2*(-1)^k)/(pi*(1-4*k^2));
    i=i+1;
end
l=-20:20;
ak5=zeros(1, length(l));
ak5(20:22)=[0.5*exp(-1i*pi/4),0,0.5*exp(1i*pi/4)];
ak6=zeros(1, length(l));
ak6(19:23)=[0.5,0.5,0,0.5,0.5];
ak1(21)=0.5;
ak2(21)=0;
ak3(21)=0.5;
ak4(21)=0.5;
ak8(21)=0.5;
ak9(21)=(1-exp(-1));
ak10(21)=0;
subplot(3,2,1);
stem(l,abs(ak1));
xlabel('k');
ylabel('abs(ak)');
title('1.');
subplot(3,2,2);
stem(l,angle(ak1));
xlabel('k');
ylabel('phase(ak)');
title('1.');
subplot(3,2,3);
stem(l,abs(ak2));
xlabel('k');
ylabel('abs(ak)');
title('1.');
subplot(3,2,4);
stem(l,angle(ak2));
xlabel('k');
ylabel('phase(ak)');
title('1.');
subplot(3,2,5);
stem(l,abs(ak3));
xlabel('k');
ylabel('abs(ak)');
title('1.');
subplot(3,2,6);
stem(l,angle(ak3));
xlabel('k');
ylabel('phase(ak)');
title('1.');










