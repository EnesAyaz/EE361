%%
Vt= 440;
Ra=0.377;
Eff=86.72/100;
hp=745.699872;

Pelec= 39*hp;clc

ArmCurrent= Pelec/Vt;

InEmf= Vt- ( ArmCurrent*Ra);

Pmech= Pelec*Eff;

RotLoss= (InEmf*ArmCurrent)-Pmech;

ArmLoss= Pelec-Pmech-RotLoss;

fprintf(' %f kW Electrical Power, %f kW Mechanical Output, %f kW Rotational Loss, %f kW Armeture Loss',Pelec/1000, Pmech/1000,RotLoss/1000, ArmLoss/1000);

%%

Vt=440;
Ra=0.336;
Pelec= 39*hp;

ArmCurrent= Pelec/Vt;

InEmfG= Vt+ ( ArmCurrent*Ra);

fprintf(' %f V Induced Emf\n',InEmfG);


Wm=(InEmfG/InEmf)*1000;
fprintf('%f rpm motor speed\n', Wm);


%%

ReductEmf= (1025/Wm)*InEmfG;

Reduction= (1-ReductEmf/InEmfG)*100;

fprintf('%f % reduction in the fiedl current', Reduction);

%%

Vt= 440;
Ra=0.377;
Rag=0.336;
Eff=86.72/100;
hp=745.699872;

Pelec= 39*hp;clc

ArmCurrent= Pelec/Vt;

InEmf= Vt- ( ArmCurrent*Ra);

Tmech= Pmech/1000;
Wmech=750;

PmechN= Tmech*Wmech;

PelecN= PmechN/Eff;


EaN= InEmf*(750/1000);

VtN= EaN+( ArmCurrent*Ra);

EaGN= VtN+(ArmCurrent*Rag);

fprintf(' %f V Induced Emf\n',EaGN);
%%

Reduction =  (1-EaGN/InEmfG)*100;

fprintf('%f % reduction in the fiedl current\n', Reduction);
%%

WmN= (EaGN/InEmf)*1000;
fprintf('%f rpm\n ', WmN);


%%
