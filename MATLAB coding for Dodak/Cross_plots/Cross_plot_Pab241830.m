% Cross plot analysis of Pab Sandstone Dhodak-03
% Defining the data
load data_Pab241830.txt
Depth = data_Pab241830(:,1)
Vsh = data_Pab241830(:,2)
Vp = data_Pab241830(:,3)
RHOB = data_Pab241830(:,4)
PHIT = data_Pab241830(:,5)
PHIE = data_Pab241830(:,6)

% Porosity vs. Vp (Water-saturated Clean SS and Dry Shaly SS)
% Raymer et al (1980)(Water saturated Clean SS)
VpR = ((1-PHIT).^2)*5.5 + PHIT*1
%Han's relation(Dry Shaly Sandstone with clay factor)at 40 MPa
VpD = 5.41 - 6.35*(PHIT) - 2.87*(.10)

% Cross plot
figure(1)
plot(PHIT,Vp,'*g')
ylabel('Vp (km/s)')
xlabel('Porosity (%)')
title('Vp vs. Porosity for Pab Sandstone of Dhodak-03 (2418-2430m)')
hold on
plot(PHIT, VpR,'-b')
hold on
plot(PHIT, VpD,'-m')

% Porosity vs. Vp (For Water saturated Shaly Sandstone)
% Tosaya et al. (1982) (Water saturated shaly Sandstone)
VpT = 5.8 - 8.6*(PHIT) - 2.4*(.15)
%Han's empirical relation(Water Saturated Shaly SS)40 MPa
VpS = 5.59 - 6.96*(PHIT) - 2.18*(.15)
% Castagna's et al. (1985)(Water Saturated Shaly SS)
VpC = 5.81 - 9.42*PHIT - 2.21*(.15)

% Cross plot
figure(2)
plot(PHIT,Vp,'*g')
ylabel('Vp (km/s)')
xlabel('Porosity (%)')
title('Vp vs. Porosity for Pab Sandstone of Dhodak-03 (2418-2430m)')
hold on
plot(PHIT, VpT,'-b')
hold on
plot(PHIT, VpS,'-r')
hold on
plot(PHIT,VpC,'-m')

% Density vs Vp
% Blangy (1992) relations(Poorly consolidated sandstone)
Rho1 = 1.498 + 0.224*Vp
%  Jizba (1991) relation (Tight gas sandstone)
Rho2 = 1.96 + 0.117*Vp
%  Gardner et al (1974) relation (Water saturated sandstone)
Rho3 = 1.66*(Vp.^0.261)

% Cross plot
figure(3)
plot(Vp,RHOB,'*g')
xlabel('Vp (km/s)')
ylabel('Density (g/cc)')
title('Density vs. Porosity for Pab Sandstone of Dhodak-03 (2418-2430m)')
hold on
plot(Vp,Rho1,'-b')
hold on
plot(Vp,Rho2,'-r')
hold on
plot(Vp,Rho3,'-k')