clc;
clear;
close all;

n = [-4:2];
x = [1,-2,4,6,-5,8,10];

[x11,n11] = sigshift(3*x,n,-2);
[x12,n12] = sigshift(x,n,4);
[x13,n13] = sigadd(x11,n11,x12,n12);
[x1,n1] = sigadd(x13,n13,2*x,n);
stem(n1,x1);
xlabel('n'); 
ylabel('x1(n)'); 
title('Sequence x1(n)');