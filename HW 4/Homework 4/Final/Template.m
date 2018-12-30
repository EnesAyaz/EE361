
%% EE361 Fall 2018 HW#4

%% NAME: _TEMPLATE_
%% STUDENT NUMBER: 123456

%%
% Change your .m file name to the following:
% name_surname_ID_hw4.m

% Most of the operations are already given to you for simplicity.
% Uncomment the already given solutions to use them, i.e, Delete the "%" in
% front of such lines.

% Use "fprintf" function to display results
% Do not display the results of long arrays!!!

% Please add axis names, legends, titles etc. in all your plots

% Use the already defined variable names whenever possible

% Show the unit for each variable

% Examine the whole template before you start

% Delete the hints, guidelines etc. given in this template when you prepare
% your solution

% Note that:
% Indexes in MATLAB start at 1, not 0
% Elementwise operations:
% http://www.mathworks.com/help/matlab/matlab_prog/array-vs-matrix-operations.html

%% Q1

%% PartA
Vtm=440; %V
hp=745.699872; % Watt
Eff= 86.72/100; % 0-1;
RaM=0.377; % ohm
Nm=1000; %rpm
%% i)
Pelec= 39*hp; %% Watt
fprintf('Electirical Power : %f kW \n', Pelec/1000);
%% ii)
Iam=Pelec/Vtm; %% amper
fprintf('Armeture Current : %f A \n', Iam);

%% iii)
EmfM= Vtm-( Iam*RaM);
fprintf('Induced EMF : %f V \n', EmfM);

%% iv)
Pmech= Pelec*Eff;
fprintf('Mechanical Power : %f kW \n', Pmech/1000);

%% v) 
wm=(Nm/60)*2*pi;
Tmech= Pmech/wm;
fprintf('Mechanical Torque : %f N.m \n', Tmech)

%% vi)
RotLoss= EmfM*Iam-Pmech;
ArmLoss= Pelec- EmfM*Iam;
fprintf('Rotational Loss : %f kW \n', RotLoss/1000);
fprintf('Armeture Loss : %f kW \n', ArmLoss/1000);

%% vii
fprintf('Field control is not suitable for this motor\n');
fprintf('beacuse the motor is permanent magnet motor.\n');
fprintf('Armeture voltage control can be made to control the speed of the motor.\n');

%% Part B
RaG=0.336 ; %ohm

%% i)
Vtg= 440; % V
PelecG=39*hp; % Watt
Iag= Pelec/Vtg; % Amper
EmfG= Vtg+ (Iag*RaG);
fprintf('Induced Emf : %f V \n', EmfG )

%% ii) 

EmfMN = EmfG; % no-load, armeture current is zero.
nNoload= Nm*(EmfMN/EmfM); % no load speed
fprintf('Speed of the Motor : %f rpm \n', nNoload )

%% iii)
Nreduct=1025; % rpm
Reduction= (1-Nreduct/nNoload)*100; % percentage
fprintf('Reduction in the field current : %f % \n', Reduction)


%% iv)
EmfM750= EmfM*(750/1000);
IagN= Iam; %% due to torque is the same

EmfG750= EmfM750+ IagN*(RaG+RaM);

fprintf(' Induced Emf for 750 rpm : %f V \n', EmfG750);


%% v)

Reduction750= (1-EmfG750/EmfG)*100; %percentage

fprintf('Reduction in the field current : %f percentage \n ', Reduction750)
%% vi)
EmfM750=EmfG750; % no load, armeture current is zero
N750= Nm*(EmfM750/EmfM); % rpm

fprintf('Speed of the motor under no load : %f rpm \n', N750);



%% Q2)
n=100; % turn
i=2; % amper
u0= 4*pi*10e-7; %H/m;
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
 ylim([0 0.1])
 ylabel('Inductance(H)');
 title('Inductance of the Reluctance Motor vs Displacement Angle');
 
 %% iv
 T= -0.5*(Ld-Lq)* i^2*sin(2*Theta);
 figure(2)
 plot(Theta,T);
 xlabel('Displacement Angle(Radian)');
 xlim( [0 2*pi])
 ylim([-0.15 0.15])
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
ylim([-0.15 0.15])
ylabel('Torque( N.m)');
title('Torque of the Reluctance Motor vs Time');

fprintf(' Average torque is zero' );

%% vi

fprintf('The average torque of the releuctance motor is not zero only if mechanical\n ')
fprintf('speed is is equal to electrical angular frequency and initial poisition is not fold of pi.\n')

%% After you finished

% RUN THE FOLLOWING COMMAND FROM MATLAB TERMINAL (COMMAND WINDOW). DO NOT
% LEAVE IT IN YOUR .M FILE !!!

% publish('name_surname_ID_hw4.m','pdf')

% A report will be generated in pdf format. ONLY UPLOAD THIS PDF FILE !!!

