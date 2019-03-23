% Parameters of a typical induction machine.
rs=6.03; %Stator resistance
rr=6.085; %Rotor resistance
Ls=489.3e-3;%Stator inductance
Lr=489.3e-3;%Rotor inductance
M=450.3e-3; % Mutual inductance
P=4;	%Poles
J=0.00488;%Inertia
sigma=(Ls*Lr)-(M*M);
B=0.000;
sls=sigma/Lr;
tr=Lr/rr;
sigma1=sigma/(Lr*Ls);
c1=(Lr/M);
c2=(Ls*Lr-M*M)/(M);
lst=sigma/Lr;
