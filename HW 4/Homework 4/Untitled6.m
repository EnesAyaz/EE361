clc;

clear;

n=100;
i=2;
g=1e-3;
A=1e-3;
u=4*pi*10e-7;

R0= g/(u*A);
Ld= n^2/R0;

g=1e-2;
R90= g/(u*A);
Lq=n^2/R90;

Theta= linspace(0,5*pi,100);

L= 0.5*(Ld+Lq) + 0.5*(Ld-Lq)*cos(2*Theta);
plot(Theta,L);

%%
T= -0.5*(Ld-Lq)* i^2*sin(2*Theta);
plot(Theta,T);

%%
Sigma=0;
t=linspace(0,10,100);
wm=377;
Te=-0.5*(Ld-Lq)* i^2*sin(wm*t+ Sigma);
plot(Theta,T)

%%
