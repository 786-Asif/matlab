% for clearing and closing the previous file and data
clear all;
close all;
clc; 
% for recording the sound
%ex(at*f+d)
recorder = audiorecorder(8000 ,8,1);
buff=input("To start recording press any key");
p=input("Enter the length of recording: ");
%for displaying the sound on command prompt
disp('Start speaking.');
% for start recording
recordblocking(recorder, p);
disp('End of Recording.');
%for playing recording 
play(recorder);
% for printing sound in matrix form
data = getaudiodata(recorder);
l=length(data);
figure;
% for ploting data on graph we use plot command
plot(data);
%for flipping data up to down
dataf=flipud(data);
%Even part
z3=(data+dataf)/2;
%Odd part
z=(data-dataf)/2;
% for ploting multiple graph we use subplot command
subplot(3,1,1);
plot(data);
title('Original signal');
subplot(3,1,2);
plot(z3);
title('Even signal');
subplot(3,1,3);
plot(z);
title('Odd signal');