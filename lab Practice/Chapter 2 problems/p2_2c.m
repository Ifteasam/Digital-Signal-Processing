clc;
clear;
close all;

n = [-4:2];
x = [1,-2,4,6,-5,8,10];

[x31,n31] = sigshift(x,n,-4);
[x32,n32] = sigshift(x,n,1);
[x33,n33] = sigmult(x31,n31,x32,n32);
[x34,n34] = sigfold(x,n);
[x34,n34] = sigshift(x34,n34,2);
[x34,n34] = sigmult(x34,n34,x,n);
[x3,n3] = sigadd(x33,n33,x34,n34);
stem(n3,x3);
xlabel('n'); 
ylabel('x3(n)'); 
title('Sequence x3(n)');