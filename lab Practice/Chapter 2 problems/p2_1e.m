clc;
clear;
close all;

n5 = [-8:11]; 
x5 = [2,1,2,3];
x5 = x5'*ones(1,5); 
x5 = (x5(:))';
stem(n5,x5);
xlabel('n'); 
ylabel('x5(n)'); 
title('Sequence x5(n)');