% Transient heat transfer

% Freestream condition of CFD analysis

%% INPUTS %%

%reservior_pressure
P0= 89*10^5;%bar, N/m2
%reservior_Temperature
T0=773.15; %kelvin
% Freestream Mach Number
Mach_inf=9.13;

%% %%

%Total_Pressure
Pt=0.888*P0;
%Total_Tempertaure
Tt=0.967*T0;

gamma=1.4;

% Calculation of freestream pressure
Freestream_Pressure=Pt/((1+(((gamma-1)/2)*Mach_inf^2))^(gamma/(gamma-1)))

% Calculation of freestream Temperature
Freestream_Temperature=Tt/(1+(((gamma-1)/2)*Mach_inf^2))

% Gas Constant
R=287; %  m2/s2/K           j-mol^-1-K^-1

% Freestream density
Density_inf=Freestream_Pressure/(Freestream_Temperature*R)

% Freestream Velocity
u_inf=Mach_inf*sqrt(gamma*R*Freestream_Temperature)

% length of cone
Length=131.9*10^-3; %m

% Freestream Viscosity calculation using Sutherland law
Vis_ref=1.716*10^-5; %kg/ms
Temp_ref=273; %K 20 degree celcious
Smu=110; %K

Vis_inf=(((Freestream_Temperature/Temp_ref)^(3/2))*((Temp_ref+Smu)/(Freestream_Temperature+Smu)))*Vis_ref
% Freestream Reynolds Number
Re_inf= (Density_inf*u_inf*Length)/Vis_inf


% Calculation of Prandtl Number

% Determining the freestream coductivity
k_ref=0.0241; %W/(m.K)
Temp_ref=273; %K 20 degree celcious
Sk=194; %K

k_inf=(((Freestream_Temperature/Temp_ref)^(3/2))*((Temp_ref+Sk)/(Freestream_Temperature+Sk)))*k_ref;
% Freestream Prandtl Number
Cp=1.005*10^3 ;%KJ/KgK
Pr_inf= (Vis_inf*Cp)/k_inf












