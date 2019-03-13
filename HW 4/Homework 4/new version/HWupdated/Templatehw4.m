
%% EE361 Fall 2018 HW#4

%% NAME: _TEMPLATE_
%% STUDENT NUMBER: 123456


%%
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
Eff= 86.72/100; % 0-1;
RaM=0.377; % ohm
Nm=1000; %rpm
RotLoss=2263; % W

%% i)

% Pmech= % kW

%fprintf('Mechanical Power : %f kW \n');


%% ii)

% Tmech=  % N.m
%fprintf('Mechanical Torque : %f N.m \n');

 %% iii) 
 
%Pelec= %% Watt
%fprintf('Electirical Power : %f kW \n');
 

%% iv)

%ArmLoss=  % Watt
%fprintf('Armeture Loss : %f kW \n');

%% v
%Iam=%% amper
%fprintf('Armature Current : %f A \n');


%% vi)
% EmfM=  %Volt
%fprintf('Induced EMF : %f V \n');



%% vii)
% fprintf('Comment here\n');



%% Part B
RaG=0.336 ; %ohm

%% i)
%EmfG=  % Volts
%fprintf('Induced Emf : %f V \n' );

%% ii) 
% roots([ a b c ]); you can use 'roots' function to obtain quadratic solution for this part

% N_noLoad=;   %rpm
%fprintf('Speed of the Motor : %f rpm \n');

%% iii)


%roots([x y z]);

%fprintf('Reduction in the field current : %f % \n');


%% iv)

%Emf_750 ;
%fprintf(' Induced Emf for 750 rpm : %f V \n', EmfG750);


%% v)
%Reduct_750; 
%fprintf('Reduction in the field current : %f percentage \n ', Reduct_750);


%% Q2)
n=100; % turn
i=2; % amper
u0= 4*pi*10e-7; %H/m;
A= 1e-3; % m^2
%% i)
%     g0= 1e-3; %m
%     R0=  % H^-1
%     Ld=  %H;
%     
%  fprintf('Reluctance of d-axis is %f H^-1 \n');
%  fprintf('Inductance of d-axis is %f H \n' );
    
%% ii)
%     g90= 1e-2; %m
%     R90=  % H^-1
%     Lq= %H
%     
%  fprintf('Reluctance of q-axis is %f H^-1 \n');
%  fprintf('Inductance of q-axis is %f H \n');
 
 %% iii)
 
%  Theta= ; % Radian
%  
%  L= % H
%  
%  figure(1)
%  plot();
%  xlabel('Displacement Angle(Radian)');
%  xlim()
%  ylim()
%  ylabel('Inductance(H)');
%  title('Inductance of the Reluctance Motor vs Displacement Angle');

 %% iv
% %  T= 
%  
%  figure(2)
%  plot();
%  xlabel('Displacement Angle(Radian)');
%  xlim()
%  ylim([)
%  ylabel('Torque( N.m)');
%  title('Torque of the Reluctance Motor vs Displacement Angle');

%% v

% InitialPos=pi/6;
% t=;
% wm=377; % rad/sec
% Te=;
% figure(3)
% plot()
% xlabel('Time(s)');
% xlim()
% ylim()
% ylabel('Torque( N.m)');
% title('Torque of the Reluctance Motor vs Time');
% 
% fprintf(' Comment on average torque' );

%% vi

% fprintf('Comment')




