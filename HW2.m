clc
F=[1 0;-1 -1];
C=[0; 1];
H=[1 2];
D=[0];

sys = ss(F,C,H,D);
T=0:0.01:5;

I=step(sys,T);

[y1,T,x1]=lsim(sys,I,T,[0;0]);
[y2,T,x2]=lsim(sys,I,T,[0;0]);

subplot(2,1,1);plot(T,x1);
subplot(2,1,2);plot(T,x2);
subplot(2,2,2);plot(T,x2(:,1));
subplot(2,2,4);plot(T,x2(:,2));