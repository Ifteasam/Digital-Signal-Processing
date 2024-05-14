clc;
clear; 
close all;

w = 2*(rand(1,101)-0.5);
n4 = [0:100]; 
x4 = 10*cos(0.0008*pi*n4.^2)+w;
stem(n4,x4);
xlabel('n'); 
ylabel('x4(n)'); 
title('Sequence x4(n)');