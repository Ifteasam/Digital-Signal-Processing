clc;
clear; 
close all;

n1 = [0:25]; 
x1 = zeros(1,length(n1));

for m = 0:10
    x1 = x1 + (m+1)*(impseq(2*m,0,25) - impseq(2*m+1,0,25)); 
end

stem(n1,x1); 
xlabel('n'); 
ylabel('x1(n)'); 
title('Sequence x1(n)');