clear all;
close all;
clc;
n=-5:5;
u=[zeros(1,5) 1 zeros(1,5)];
 subplot(1,2,1);
 plot(n,u);
 xlabel('Time');
 ylabel('Amplitude');
 title(" continuous Impulse funcn");
 axis([-10 10 -2 2]);
 
 
 subplot(1,2,2);
 stem(n,u);
  xlabel('Time');
 ylabel('Amplitude');
 title(" discrete Impulse funcn");
 axis([-10 10 -2 2]);
 
 

 
 
 