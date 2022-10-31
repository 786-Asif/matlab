clear all;
close all;
clc;
a=audiorecorder(8000,8,1);
p='enter the time for which you want to proceed';
t=input(p);
disp('start speaking');
recordblocking(a,t);
disp('end of recording');
play(a);
q=getaudiodata(a);
l=length(q);
figure;
plot(q);
prompt('enter your choice : n\1 listen from begining\ n2: listen from end');
x=input(prompt);
while(x)
    if x==1
        p1='enter attenuation factor (<1) or amplification facctor (>1) enter 1 for no change';
        f=input(p1);
        p2='enter delay time in sec. enter zero for no delay';
        g=input(p2);
        p5='1.slow down \2 speed up';
        i=input(p5);
        p3='slow down factor or speed up factor. enter 1 for no change';
        e=input(p3);
        if i==2
            r=[zeros(g*8000,1); q(1:e:end)];
            sound(f.*r,8000);
            plot(f.*r);
            break;
        elseif i==1
            c=length(q);
            d=zeros(e*c,1);
            d(e:e:end)=q;
            r=[zeros(g*8000,1);d];
            sound (f.*r,8000);
            figure;
            plot(f.*r);
            break;
        else
            e=1;
            r=[zeros(g*8000,1);q(1:e:end)];
            sound(f.*r, 8000);
            figure;
            plot(f.*r);
            break;
        end
        break;
    elseif x==2
        p1='enter attenuation factor or amplification factor.enter 1 for no change';
        f=input(p1);
        p2='enter delay time in sec. enter 0 for no change';
        g=input(p2);
        p5='1. slow down 2. speed up';
        i =input(p5);
        p3='slow down factor or speed up factor ';
        e=inpiut(p3);
        q=flipud(q);
        if i==2
            r=[zeros(g*8000,1);q(1:e:end)];
            sound(f.*r,8000);
            figure;
            plot(f.*r);
        elseif i==1
            c=length(q);
            d=zeros(e*c,1);
            d(e:e:end)=q;
            r=[zeros(g*8000,1);q(1:e:end)];
            sound(f.*r,8000);
            figure;
            plot(f.*r);
            break;
        else
            e=1;
            r=[zeros(g*8000,1);q(1:e:end)];
            sound(f.*r,8000);
            figure;
            plot(f.*r);
            break;
        end
         else
        p4='enter wrong choice';
        disp(p4);
        x=input(prompt);
        break;
    end
    break;
    
end








