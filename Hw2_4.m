clc
F=[1 0;-1 -1];
C=[0; 1];
H=[1 2];
D=[0];

sys = ss(F,C,H,D);
T=0:0.01:5;
U = zeros(size(T,2),1);

[y,T,x]=lsim(sys,U,T,[2;-1]);
plot(T,x)
plot(T,y)

O=obsv(F,H)
r=rank(O)

