data=load("history.csv");
iteration=data(:,3);
rms_Rho=data(:,4);
rms_RhoU=data(:,5);
rms_RhoV=data(:,6);
rms_RhoE=data(:,7);
rms_nu=data(:,8);
Total_HF=data(:,9);
Max_HF=data(:,10);
C_Drag=data(:,11);
C_Lift=data(:,12);

% Plotting Residuls
plot(iteration,rms_Rho)
hold on
plot(iteration,rms_RhoU)
hold on
plot(iteration,rms_RhoV)
hold on
plot(iteration,rms_RhoE)
hold on
plot(iteration,rms_nu)
xlabel("Iterations")
ylabel("Residuls")
title('RESIDUEL')
legend('rmsRho','rmsRhoU','rmsRhoV','rmsRhoE','rms_nu')

figure
% plotting data
plot(iteration,Total_HF)
hold on
plot(iteration,Max_HF)
hold on
xlabel("Iterations")
ylabel("Heat Flux")
title('HEAT FLUX')
legend('Total Heat Flux','Max Heat Flux')

figure
plot(iteration,C_Drag)
xlabel("Iterations")
ylabel("Drag Coefficient")
title('Coefficient of DRAG')
hold on

figure
plot(iteration,C_Lift)
xlabel("Iterations")
ylabel("Lift coefficient")
title('Coefficient of Lift')
hold on


