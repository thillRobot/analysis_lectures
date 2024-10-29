% ME3001, TNTech, Tristan Hill, October 29, 2024
% Curve fitting with Linear Regression 
% this program will
% 1) generate dataset with random noise
% 2) find best fit using 'linear least sqaures regression' from eqs in notes
% 3) find best fit using LSR with MATLAB polyfit()
clear; clc; close all

% step 1) - generate dataset
m=-3; b=1.5;
error_scale=5;

xdata=-5:.5:5;
n=length(xdata);
ydata=m*xdata+b+rand(1,n)*error_scale;

figure(1); hold on
plot(xdata,ydata,'o')
grid on

% step 2) - fit line with LSR equations
a1=(n*sum(xdata.*ydata)-sum(xdata)*sum(ydata))/...
    (n*sum(xdata.^2)-sum(xdata.^2))
a0=sum(ydata)/n

% compare with equations from ME3023
a1=(sum(xdata)*sum(ydata)-n*sum(xdata.*ydata))/...
    (sum(xdata)^2-n*sum(xdata.^2))
a0=(sum(xdata)*sum(xdata.*ydata)-sum(xdata.^2)*sum(ydata))/...
    (sum(xdata)^2-n*sum(xdata.^2))

xfit=-5:.1:5;
yfit=a1*xfit+a0;

plot(xfit,yfit,'-')

% step 3) - fit line with LSR in MATLAB
A=polyfit(xdata,ydata,1) % get second the coefficients

pfit=A(2)+A(1)*xfit;  % calculate points on curve
plot(xfit,pfit,':g','LineWidth',5)

% perform cubic regression in MATLAB
% y=a3x^3+a2x^2+a1x+a0
A=polyfit(xdata,ydata,3) 

pfit=A(4)+A(3)*xfit+A(2)*xfit.^2+A(1)*xfit.^3;
plot(xfit,pfit,':c','LineWidth',5)
