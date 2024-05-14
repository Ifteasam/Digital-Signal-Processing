clc;
clear;
close all;

x = [3,11,7,0,-1,4,2];

h = [2,3,0,-5,2,1];

[linearoutput] = linearconvulation(x,h);

figure(1);
plot(linearoutput);