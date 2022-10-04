% Wave propagation (Radiation Pattern E&H Plane)
close all
clc
f = 1.5e9; % i assumed that frequency is 2.45 GHZ
c = 3.8e8;  %speed of light in vacuum equals 3*10^8 m/s
lambda = c/f; % lambda equals speed of light in vacuum divided by frequency
L1 =0.15*lambda; % length of short dipole
d1 = dipole('Length',L1,'Width',L1/1000,'TiltAxis','Z'); %'current',10)
%Radiation Pattern E-Plane
figure,patternElevation(d1,f), %title('E-Plane'),xlabel('E-Plane'),ylabel('E-Plane')
%Radiation Pattern H-Plane
figure,patternAzimuth(d1,f),%title('H-Plane'),xlabel('H-Plane')
