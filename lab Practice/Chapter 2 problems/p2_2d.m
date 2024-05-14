clc;
clear;
close all;

n4 = [-10:10];
n = [-4:2];
x = [1,-2,4,6,-5,8,10];
x41 = 2*exp(0.5*n4); 
x412 = cos(0.1*pi*n4); 
[x42,n42] = sigmult(x41,n4,x,n);
[x43,n43] = sigshift(x,n,-2);
[x44,n44] = sigmult(x412,n4,x43,n43);
[x4,n4] = sigadd(x42,n42,x44,n44);
stem(n4,x4);
xlabel('n'); 
ylabel('x4(n)'); 
title('Sequence x4(n)');