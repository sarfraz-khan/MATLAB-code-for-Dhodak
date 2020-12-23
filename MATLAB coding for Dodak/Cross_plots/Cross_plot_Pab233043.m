% Cross plot analysis of Pab Sandstone Dhodak-03
% Defining the data
load data_Pab233043.txt
Depth = data_Pab233043(:,1)
Vsh = data_Pab233043(:,2)
Vp = data_Pab233043(:,3)
RHOB = data_Pab233043(:,4)
PHIT = data_Pab233043(:,5)
PHIE = data_Pab233043(:,6)


% Porosity vs. Vp (Water-saturated Clean SS and Dry shaly SS)
% Raymer et al (1980)(Water saturated Clean SS)
VpR = ((1-PHIT).^2)*5.5 + PHIT*1
%Han's relation(Water Saturated Clean Sandstone)at 40 MPa
VpC = 6.08 - 8.06*(PHIT)
%Han's relation(Dry Shaly Sandstone)at 40 MPa
VpD = 5.41 - 6.35*(PHIT) - 2.87*(.05)

% Cross plot
figure(1)
plot(PHIE,Vp,'*g')
ylabel('Vp (km/s)')
xlabel('Porosity (%)')
title('Vp vs Porosity for Pab Sandstone Dhodak-03 (2330-2343m)')
hold on
plot(PHIT, VpR,'-b')
hold on
plot(PHIT,VpC,'-r')
hold on
plot(PHIT, VpD,'-m')

% Porosity vs. Vp (For Water saturated Shaly Sandstone)
% Tosaya et al. (1982) empirical relation
VpT = 5.8 -8.6*(PHIT) -2.4*(.34)
%Han's empirical relation(Water Saturated Shaly Sandstone)40 MPa
VpS = 5.59 - 6.96*(PHIT) - 2.18*(.34)
% Castagna's et al. (1985) (Water Saturated Shaly sandstone)
VpC = 5.81 -9.42*PHIT - 2.21*(.34)

% Cross plot
figure(2)
plot(PHIT,Vp,'*g')
ylabel('Vp (km/s)')
xlabel('Porosity (%)')
title('Vp vs Porosity for Pab Sandstone Dhodak-03 (2330-2343m)')
hold on
plot(PHIT, VpT,'-b')
hold on
plot(PHIT, VpS,'-r')
hold on
plot(PHIT,VpC,'-m')

% Castagna's et al. (1985)-Shaly sandstone
VpC1 = 5.81 -9.42*PHIT - 2.21*(.05)
VpC2 = 5.81 -9.42*PHIT - 2.21*(.10)
VpC3 = 5.81 -9.42*PHIT - 2.21*(.15)

% Cross plot
figure(3)
plot(PHIT,Vp,'*g')
ylabel('Vp (km/s)')
xlabel('Porosity (%)')
title('Vp vs Porosity for Pab Sandstone Dhodak-03 (2330-2343m)')
hold on
plot(PHIT, VpC1,'-m')
hold on
plot(PHIT, VpC2,'-b')
hold on
plot(PHIT,VpC3,'-c')

% Density vs Vp
% Blangy (1992) relations(Poorly consolidated sandstone)
Rho1 = 1.498 + 0.224*Vp
%  Jizba (1991) relation (Tight gas sandstone)
Rho2 = 1.96 + 0.117*Vp
%  Gardner et al (1974) relation (Water saturated sandstone)
Rho3 = 1.66*(Vp.^0.261)

% Cross plot
figure(4)
plot(Vp,RHOB,'*g')
xlabel('Vp (km/s)')
ylabel('Density (g/cc)')
title('Density vs Porosity for Pab Sandstone Dhodak-03 (2330-2343m)')
hold on
plot(Vp,Rho1,'-b')
hold on
plot(Vp,Rho2,'-r')
hold on
plot(Vp,Rho3,'-k')

% Impedance
IM = Vp.*RHOB
IM1 = Vp.*Rho1
IM2 = Vp.*Rho2
% Cross plot
figure(5)
plot(Vp,IM,'*g')
xlabel('Vp (km/s)')
ylabel('Impedance')
hold on
plot(Vp,IM1,'-r')
hold on
plot(Vp,IM2,'-k')