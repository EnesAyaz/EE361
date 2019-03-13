
%% EE361 Fall 2018 HW#4

%% NAME: SOLUTÝON

%% Q1

%% PartA
Vtm=440; %V
Eff= 86.72/100; % 0-1;
RaM=0.377; % ohm
Nm=1000; %rpm
RotLoss=2263; % W

%% i)

Pmech= 29000; % W
fprintf('Mechanical Power : %f kW \n', Pmech/1000);


%% ii)
wm=(Nm/60)*2*pi; % rad/sec
Tmech= (Pmech+RotLoss)/wm; % N.m
fprintf('Mechanical Torque : %f N.m \n', Tmech);

 %% iii) 
Pelec= Pmech/Eff; %% Watt
fprintf('Electirical Power : %f kW \n', Pelec/1000);

%% iv)
ArmLoss= Pelec- Pmech- RotLoss;
fprintf('Armeture Loss : %f kW \n', ArmLoss/1000);

%% v
Iam=sqrt(ArmLoss/RaM); %% amper
fprintf('Armeture Current : %f A \n', Iam);
K1=Tmech/Iam; % Motor Constant

%% vi)
EmfM= Vtm- Iam*RaM; %Volt
fprintf('Induced EMF : %f V \n', EmfM);


%% vii)
fprintf('Field control is not suitable for this motor\n');
fprintf('beacuse the motor is permanent magnet motor.\n');
fprintf('Armeture voltage control can be made to control the speed of the motor.\n');


%% Part B
RaG=0.336 ; %ohm

%% i)
EmfG= Iam*(RaM+RaG) + EmfM; % Volts
fprintf('Induced Emf : %f V \n', EmfG );

%% ii) 
% w_noload at quadratic solution
a=K1;
b=-EmfG;
c=( RaG+RaM)*RotLoss/(K1);
w_noLoad= max(roots([ a b c ]));

N_noLoad=( w_noLoad*60)/(2*pi);

fprintf('Speed of the Motor : %f rpm \n', N_noLoad );

%% iii)
wm_reduct= (1025/60)*2*pi;

x=K1*(wm_reduct^2);
y=-EmfG*wm_reduct;
z=((RaM+RaG)*RotLoss)/(K1);

k=max(roots([x y z]))-1;

fprintf('Increasing in the field current : %f % \n ',k*100 );



%% iv) 

wm_750=(750/60)*2*pi; % rad/sec
P_750= Tmech*wm_750; % N.m

p=1;
r=-EmfG;
t=P_750*(RaM+RaG);

Emf_750= max((roots([p r t])));

fprintf(' Induced Emf for 750 rpm : %f V \n ', Emf_750);


%% v)
Reduct_750 = Emf_750/(K1*wm_750)-1;

fprintf('Ýncreasing in the field current : %f percentage \n ', Reduct_750*100);


%% Q2)
n=100; % turn
i=2; % amper
u0= 4*pi*1e-7; %H/m;
A= 1e-3; % m^2
%% i)
    g0= 1e-3; %m
    R0= (2*g0)/(A*u0); % H^-1
    Ld= n^2/R0; %H;
    
 fprintf('Reluctance of d-axis is %f H^-1 \n',R0);
 fprintf('Inductance of d-axis is %f H \n' ,Ld);
    
%% ii)
    g90= 1e-2; %m
    R90= (2*g90)/(A*u0); % H^-1
    Lq= n^2/R90; %H;
    
 fprintf('Reluctance of q-axis is %f H^-1 \n',R90);
 fprintf('Inductance of q-axis is %f H \n' ,Lq);
 
 %% iii)
 Theta= linspace( 0,2*pi,100); % Radian
 
 L= 0.5*(Ld+Lq) + 0.5*(Ld-Lq)*cos(2*Theta); % H
 
 figure(1)
 plot(Theta,L);
 xlabel('Displacement Angle(Radian)');
 xlim( [0 2*pi])
 ylim([0 0.01])
 ylabel('Inductance(H)');
 title('Inductance of the Reluctance Motor vs Displacement Angle');
 
 %% iv
 T= -0.5*(Ld-Lq)* i^2*sin(2*Theta);
 figure(2)
 plot(Theta,T);
 xlabel('Displacement Angle(Radian)');
 xlim( [0 2*pi])
 ylim([-0.05 0.05])
 ylabel('Torque( N.m)');
 title('Torque of the Reluctance Motor vs Displacement Angle');

%% v
Sigma=pi/6;
t=linspace(0,5,100);
wm=377;
Te=-0.5*(Ld-Lq)* i^2*sin(wm*t+ Sigma);
figure(3)
plot(Theta,T)
xlabel('Time(s)');
xlim( [0 5])
ylim([-0.05 0.05])
ylabel('Torque( N.m)');
title('Torque of the Reluctance Motor vs Time');

fprintf(' Average torque is zero' );

%% vi

fprintf('The average torque of the releuctance motor is not zero only if mechanical\n ')
fprintf('speed is is equal to electrical angular frequency and initial poisition is not fold of pi.\n')



