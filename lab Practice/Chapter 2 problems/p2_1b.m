clc;
clear; 
close all;
n2 = -5:10;

x2 = (n2.^2).*(stepseq(-5,-5,10)-stepseq(6,-5,10))+10*impseq(0,-5,10)+20*((0.5).^n2).*(stepseq(4,-5,10)-stepseq(10,-5,10)); 

stem(n2,x2);
xlabel('n'); 
ylabel('x1(n)'); 
title('Sequence x2(n)');