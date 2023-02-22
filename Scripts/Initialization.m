% Initialization
Tend = 1.4; % Parameter for controlling lenght of simulations. 

% Resistances [mmHg*s*cm^(-3)]
R1 = 3.7511e-3; 
R2 = 6.7501e-2;%*0.6;
R3 = 1;%*0.6;
R4 = 3.751e-3;
R5 = 3.751e-3;
R6 = 3.376e-2;%*0.6;
R7 = 0.101;%*0.6;
R8 = 3.751e-3;
RL = 8.000e-02; % = RmL
RR = 1.750e-02; % = RmR
R3_fix = true; % Switch for time variant R3

% Inertance [mmHg s^2 cm^-3]
L1 = 8.250E-04;
L2 = 3.600E-03;
L3 = 7.500E-04;
L4 = 3.080E-03;

% Compliance [mmHg^-1 cm^3]
C1 = 0.220;
C2 = 1.460;
C3 = 20.000; 
C4 = 9e-2;
C5 = 2.67;
C6 = 46.7;
capSerRes = 1e-9;
FwVolt = 0.6*0.0 + 1e-5;
onRes = 0.3*0 + 1e-4;
OffCond = 1e3;% 1e-8;

% Model time paramenters
tc = 0.8; % [s]
HeartRate =75;
tc=1/(HeartRate/60);
ts=0.16+0.3*tc;

% Heart Parameters
PipL = 50;%*1.15; % Left peakisovolumicpressure(mmHg)50.000
PipR = 24;%*1.15; % Right peakisovolumetricpressure(mmHg) 24.00
EdL = 0.1; % Left elastancewhilediastole(mmHgcm3) 0.100
EsL = 1.375; % Left elastancewhilesystole(mmHgcm3) 1.375
EdR = 3e-2; % Right elastancewhilediastole(mmHgcm3) 3.000E-02
EsR = 0.328; % Right elastancewhilesystole(mmHgcm3) 0.328
RmL = 8e-2; % Left myo.viscosityresistance(mmHgscm3) 8.000E-02
RmR = 1.750e-2; % Right myo.viscosityresistance(mmHgscm3) 1.750E-02


% Initial States
X10 = 71.112;   % Aortic pressure [mmHg]
X20 = 8.880;    % Current L1 Blood flowinarterialsystemiccirculation [cm^3 s^-1]
X30 = 70.516;   % Voltage C2 Systemic pressure [mmHg]
X40 = 67.337;   % Current L2 Blood flowinvenoussystemiccirculation [cm^3 s^-1]
X50 = 3.328;    % Voltage C3 Right venous–atrialpressure [mmHg]
X60 = 105.520;  % Charge ER Right ventriclevolume [cm^3]
X70 = 13.417;   % Voltage C4 Pulmonary venouspressure [mmHg]
X80 = 0.786;    % Current L3 Blood flowinarterialpulmonarycirculation [cm^3 s^-1]
X90 = 13.393;   % Voltage C5 Pulmonary pressure [mmHg]
X100 = 23.836;  % Current L4 Blood flowinvenouspulmonarycirculation [cm^3 s^-1]
X110 = 11.294;  % Voltage C6 Left venous–atrialpressure [mmHg]
X120 = 112.760; % Charge EL Left ventriclevolume [cm^3 s^-1]


% Ecmo
WaitTime = 0.022;
SetHartRate=155;
RPM_Setting =  3000; % Pump setting for ECMO

% Open livescript
open ModelCardiovascularSystem.mlx
cd Work\

