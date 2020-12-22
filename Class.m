clc
F=[0 -2;1 -3];
C=[0; 1];
H=[1 0];
D=[0];

sys = ss(F,C,H,D);
T=0.1;

sysd = c2d(sys,T)

mean=0;
sd=1;
T1=0:0.1:100
wn=sd*randn(1,size(T1,2))+mean
plot(wn)


Y=lsim(sysd,wn,T1)
plot(Y)

[Y1,x]=ksdensity(wn)
[Y2,x1]=ksdensity(Y)
subplot(2,1,1); plot(x,Y1)
subplot(2,2,2); plot(x1,Y2)