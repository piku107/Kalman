clc
F=[1 0;-1 -1];
C=[0; 1];
H=[1 2];
D=[0];

sys = ss(F,C,H,D);

T=0:0.01:5;

[Y,~,U]=step(sys,T);

subplot(3,1,1); plot(T,U(:,1));
subplot(3,1,2); plot(T,U(:,2));
subplot(3,1,3); plot(T,Y);