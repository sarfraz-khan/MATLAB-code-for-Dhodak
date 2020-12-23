% Cross plot analysis of Pab Sandstone Dhodak-03
% Defining the data
load data_Pab1.txt
Depth = data_Pab1(:,1)
Vsh = data_Pab1(:,2)
Vp = data_Pab1(:,3)
RHOB = data_Pab1(:,4)
PHIT = data_Pab1(:,5)
PHIE = data_Pab1(:,6)


% Porosity vs. Vp (Water-saturated SS rock)
% Raymer et al (1980)
VpR = ((1-PHIT).^2)*5.5 + PHIT*1
%Han's relation(WS Clean Sandstone)at 40 MPa
VpH = 6.08 - 8.06*(PHIT)
% Cross plot
figure(2)
plot(PHIT,Vp,'*g')
ylabel('Vp (km/s)')
xlabel('Porosity (%)')
hold on
plot(PHIT, VpR,'-m')
hold on
plot(PHIT,VpH,'-c')

% Porosity vs. Vp (For clay contents)
% Tosaya et al. (1982) empirical relation
Vp1 = 5.8 -8.6*(PHIT) -2.4*(.25)
%Han's empirical relation(Shaly WS Sandstone)40,30,20 MPa
Vp2 = 5.59 - 6.93*(PHIT) - 2.13*(.20)
Vp3 = 5.55 - 6.96*(PHIT) - 2.18*(.15)
Vp4 = 5.49 -6.94*(PHIT) -2.17*(.20)
%Han's empirical relation(Clean WS Sandstone)40 Mpa
Vp5 = 6.08 - 8.06*(PHIT)
% Castagna's et al. (1985)-Shaly sandstone
VpC = 5.81 -9.42*PHIT - 2.21*(.25)
% Cross plot
figure(3)
plot(PHIT,Vp,'*g')
ylabel('Vp (km/s)')
xlabel('Porosity (%)')
hold on
plot(PHIT, Vp1,'-b')
hold on
plot(PHIT, Vp2,'-c')
hold on
plot(PHIT,VpC,'-m')

% Castagna's et al. (1985)-Shaly sandstone
VpC1 = 5.81 -9.42*PHIT - 2.21*(.30)
VpC2 = 5.81 -9.42*PHIT - 2.21*(.25)
VpC3 = 5.81 -9.42*PHIT - 2.21*(.20)
% Cross plot
figure(4)
plot(PHIT,Vp,'*g')
ylabel('Vp (km/s)')
xlabel('Porosity (%)')
hold on
plot(PHIT, VpC1,'-m')
hold on
plot(PHIT, VpC2,'-b')
hold on
plot(PHIT,VpC3,'-c')

% Density vs. Porosity
% Castagna et al.(1993)revised Gardner et al. (1974) relationship 
RhoC = (1-PHIT)*2.65 + PHIT*1.03
% Cross plot
figure(5)
plot(PHIT,RHOB,'og')
ylabel('Density (g/cc)')
xlabel('Porosity (%)')
hold on
plot(PHIT,RhoC,'-m')

% Density vs Vp
% Blangy (1992) relations(Poorly consolidated sandstone)
Rho1 = 1.498 + 0.224*Vp
%  Jizba (1991) relation (Tight gas sandstone)
Rho2 = 1.96 + 0.117*Vp
% Han (1986) (water saturated SS)
Rho3 = 1.569 + 0.195*Vp
% Cross plot
figure(6)
plot(Vp,RHOB,'*g')
xlabel('Vp (km/s)')
ylabel('Density (g/cc)')
hold on
plot(Vp,Rho1,'-b')
hold on
plot(Vp,Rho2,'-m')
hold on
plot(Vp,Rho3,'-c')

% Density vs. Vp
% Gardner's relation
Rho4 = 1.66*(Vp).^0.261
Rho5 = -0.0115*(Vp).^2 + 0.261*Vp + 1.515
% Cross plot
figure(7)
plot(RHOB,Vp,'*g')
xlabel('Density(g/cm^3)')
ylabel('Vp(km/s)')
hold on
plot(Rho4,Vp,'-m')
hold on
plot(Rho5,Vp,'-c')

% Porosity vs. Vp (For clay contents)
% Tosaya et al. (1982) empirical relation for C=0.20,0.25,0.30
VpT1 = 5.8 -8.6*(PHIT) -2.4*(.20)
VpT2 = 5.8 -8.6*(PHIT) -2.4*(.25)
VpT3 = 5.8 -8.6*(PHIT) -2.4*(.30)
% Cross plot
figure(8)
plot(PHIT,Vp,'*g')
ylabel('Vp (km/s)')
xlabel('Porosity (%)')
hold on
plot(PHIT, VpT1,'-b')
hold on
plot(PHIT, VpT2,'-c')
hold on
plot(PHIT,VpT3,'-m')

% Porosity vs. Vp (Water-saturated SS rock)
% Raymer et al (1980)
VpR = ((1-PHIT).^2)*5.5 + PHIT*1
%Han's relation(Dry Sandstone with clay factor)at 40 MPa
VpD = 5.41 - 6.35*(PHIT) - 2.87*(.25)
%Han's relation(WS Clean Sandstone)at 40 MPa
VpH = 6.08 - 8.06*(PHIT)
%Han's empirical relation(WS Sandstone with clay factor)40MPa
Vp2 = 5.59 - 6.96*(PHIT) - 2.18*(.05)
% Cross plot
figure(9)
plot(PHIT,Vp,'*g')
ylabel('Vp (km/s)')
xlabel('Porosity (%)')
hold on
plot(PHIT,VpD,'-c')
hold on
plot(PHIT, VpH,'-b')
hold on
plot(PHIT,Vp2,'-r')
