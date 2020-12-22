clc
clear all
close all
P=[10 2;2 2];
syms x; syms y;
z=((x^2)/(100))+((y^2)/(4))-(2*0.1*x*y/20);
p=(1/(2*pi*2*10*sqrt(1-0.1^2)))*exp(-z/(2*(1-0.1^2)))


fmesh(p,[-20 20 -20 20])
fcontour(p,[-20 20 -20 20])