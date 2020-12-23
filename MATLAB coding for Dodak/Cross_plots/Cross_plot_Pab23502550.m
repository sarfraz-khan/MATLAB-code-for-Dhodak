% Cross plot analysis of Pab Sandstone Dhodak-03
% Defining the data
load data_Pab23502550.txt
Depth = data_Pab23502550(:,1)
GR = data_Pab23502550(:,2)
Vsh = data_Pab23502550(:,3)
DT = data_Pab23502550(:,4)
Vp = data_Pab23502550(:,5)
RHOB = data_Pab23502550(:,6)
NPHI = data_Pab23502550(:,7)
PHIT = data_Pab23502550(:,8)
PHIE = data_Pab23502550(:,9)

% Depth vs. GR

% Cross plot
figure
plot(GR,Depth,'-g')
ylabel('Depth (meters)')
xlabel('GR (API)')
hold on
plot(Vsh, Depth,'-b')
ylabel('Depth (meters)')
xlabel('Vsh (%)')
hold on
plot(DT,Depth,'-r')
ylabel('Depth (meters)')
xlabel('DT')
hold on
plot(Vp, Depth,'-m')
ylabel('Depth (meters)')
xlabel('Vp (km/s)')
hold on
plot(RHOB,Depth,'-c')
ylabel('Depth (meters)')
xlabel('RHOB')
hold on
plot(NPHI,Depth,'-k')
ylabel('Depth (meters)')
xlabel('NPHI (%)')
hold on
plot(PHIT, Depth,'-b')
ylabel('Depth (meters)')
xlabel('PHIT')
hold on
plot(PHIE, Depth,'-c')
ylabel('Depth (meters)')
xlabel('PHIE')

