clc;
clear;
close all;

n = [-4:2];
x = [1,-2,4,6,-5,8,10];

[x21,n21] = sigshift(5*x,n,-5);
[x22,n22] = sigshift(4*x,n,-4);
[x23,n23] = sigadd(x21,n21,x22,n22);
[x2,n2] = sigadd(x23,n23,3*x,n);
stem(n2,x2);
xlabel('n'); 
ylabel('x2(n)'); 
title('Sequence x2(n)');
