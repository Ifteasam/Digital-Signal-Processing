clc;
clear;
close all;

n3 = [0:20];
x3 = ((0.9).^n3).*cos(0.2*pi*n3+pi/3);
stem(n3,x3);
xlabel('n'); 
ylabel('x3(n)'); 
title('Sequence x3(n)');