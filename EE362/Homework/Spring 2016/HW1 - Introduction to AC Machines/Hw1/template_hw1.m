
%% EE362 HW#1

%% NAME: _JOSEPH HENRY_
%% STUDENT NUMBER: 123456


%%
% Change your .m file name to the following:
% name_surname_ID_hw1.m

% Please add axis names, legends, titles etc. in all your plots

% Use the already defined variable names whenever possible

% Examine the whole template before you start

% Delete the hints, guidelines etc. given in this template when you prepare
% your solution

% Note that, MATLAB trigonometric functions use radians, not degrees
% Indexes in MATLAB start at 1, not 0


%%
% Q.1)

%%
% PART A

% In this part, do not directly give answer, obtain the results using
% formulas (if applicable). For example: kw = kd*kc.
% The results of this part will be utilized in the rest of the homework.


%%
% a)

% Explain
% Define variable
% pole = ?;

%%
% b) 

% Explain
% Define variable
% slot_number = ?;

%%
% c) 

% Explain
% Define variable
% slot_angle = ?;

%%
% d) 

% Explain
% Define variable
% phase = ?;
% phase_belt = ?;

%%
% e) 

% Explain
% Define variable
% q = ?;

%%
% f) 

% Explain
% Define variable
% coil_span = ?;

%%
% g) 

% Explain
% Define variable
% conductor = ?;
% layer = ?
% Nph = ?;

%%
% h) 

% Explain
% Define variable
% kd = ?;

%%
% i) 

% Explain
% Define variable
% kc = ?;

%%
% j)

% Explain
% Define variable
% kw = ?;

%%
% k) 

% Explain
% Define variable
% frequency = ?;
% Nr = ?;


%%
% PART B

%%
% Parts a, b, c, d)

% peak_current = ?;

% "parts" is the number defining that at how many different times the mmf
% will be computed 
parts = 4;

% Define MMF components
mmfa = zeros(parts,slot_number);
mmfb = zeros(parts,slot_number);
mmfc = zeros(parts,slot_number);
mmftotal = zeros(parts,slot_number);


% The following routine will generate the MMF components
% Each row of the MMF matrices will correspond to a different time instant
% Each column of the MMF matrices will correspond to a different slot

% Time array is the time instants at which MMF will be calculated
time_array = [0,6.67e-3,10e-3,13.33e-3];

for l = 1:parts
    
    % Define the time according the index l
    time = time_array(l);
    
    % Calculate the phase currents at that time instant
    Ia = peak_current*cos(2*pi*frequency*time);
    % Ib = ?;
    % Ic = ?;
    
    % By using the winding diagram given in Figure 1, define the
    % contribution of each slot to the MMF, for each layer and for each
    % phase
    
    % Be aware that, each coil side has 8 series turns! 
    
    MMFa_layer1 = conductor*[Ia,Ia,Ia,Ia,Ia,0,0,0,0,0,0,0,0,0,0,-Ia,-Ia,...
        -Ia,-Ia,-Ia,0,0,0,0,0,0,0,0,0,0];
    % MMFa_layer2 = ?;
    
    % MMFb_layer1 = ?;
    % MMFb_layer2 = ?;
    
    % MMFc_layer1 = ?;
    % MMFc_layer2 = ?;
    
    
    % The following routine will generate the MMF waveforms using the MMF
    % contribution of each slot
    % You may use "sum" function
    
    for k = 1:slot_number
        % mmfa(l,k) = ?;
        % mmfb(l,k) = ?;
        % mmfc(l,k) = =?
    end
    
    % To get rid of the offset on the MMF waveforms, use the following
    % routine for each phase MMF
    average = sum(mmfa(l,:))/slot_number;
    mmfa(l,:) = mmfa(l,:)-average;
    % mmfb(l,:) = ?;
    % mmfc(l,:) = ?;
    
    % Compute the overall MMF
    % mmftotal = ?;
    
end


%%
% Part e)

% Use "stairs" for MMF waveform plots


% UNCOMMENT THE FOLLOWING
% subplot(4,1,1)
% stairs(mmfa(1,:),'b- ','Linewidth',1.5)
% grid on;
% set(gca,'FontSize',12);
% ylabel('Phase A MMF','FontSize',8,'FontWeight','Bold');
% set(gca,'xtick',[0:2:30]);
% title('t = 0','FontSize',10,'FontWeight','Bold')


subplot(4,1,2)
% Insert your code here

subplot(4,1,3)
% Insert your code here

subplot(4,1,4)
% Insert your code here

% UNCOMMENT THE FOLLOWING
% xlabel('Slot Number','FontSize',8,'FontWeight','Bold');


% Your graph will be here


%%
%Insert
%your
%comment
%here
%and
%there
%...



%%
% Q.2)

%%
% Part a)

% Explain (for a and b)


% Show analytical formulation (for a and b)


% Insert your code here (calculation)

% Display result



%%
% Part b)


% Insert your code here (calculation)

% Display result



%%
% Part c)

% Explain (for c and d)


% Show analytical formulation (for c and d)


% Insert your code here (calculation)

% Display result



%%
% Part d)


% Insert your code here (calculation)

% Display result



%% After you finished
% Run the following command from Matlab terminal (command window)
% Generate a report of your .m file as pdf and
% ONLY upload the PDF file to ODTUClass.

% publish('name_surname_ID_hw1.m','pdf')

