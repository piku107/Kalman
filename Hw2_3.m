clc
F=[1 0;-1 -1];
C=[0; 1];
H=[1 2];
D=[0];

sys = ss(F,C,H,D);
T=0.01;

sysd = c2d(sys,T)
mean=0;
sd=1;
T1=0:0.01:10;
wn=sd*randn(1,size(T1,2))+mean
plot(wn)

Y=lsim(sysd,wn,T1)
plot(Y)