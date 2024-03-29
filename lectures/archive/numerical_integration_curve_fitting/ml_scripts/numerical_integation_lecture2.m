% ME 3001 - Mechanical Engineering Analysis
% Tristan Hill - Spring 2020
% Numerical Integration - Lecture 2 
clear variables;close all;clc

% define the constant parameters
global m g l kt;

m=2;g=9.8;
l=40*(1/100);kt=9;

% initial conditions
theta0=15;
omega0=0;

% create an array of time values
dt=.001;tstop=10;
time=0:dt:tstop;

% approximate with Euler's forward integration
z1(1)=theta0*pi/180; %u1, initial theta
z2(1)=0;  %u2, initial omega

for j=1:length(time)-1
    z1(j+1)=z1(j)+f1(time(j),z1(j),z2(j))*dt;  
    z2(j+1)=z2(j)+f2(time(j),z1(j),z2(j))*dt;
end

% plot the results of the method
figure(1);hold on
plot(time,z1,'r-','LineWidth',2)
plot(time,z2,'b:','LineWidth',2)
grid on
str=sprintf('Non-Linear Pendulum (k_T=%.2f)',kt);
title(str)
legend('Angular Position (rad)','Angular Velocity (rad/s)')
xlabel('Time(s)')
axis([0 tstop -1 1])

function [z1dot]=f1(t,Z1,Z2)
    global m g l kt
    z1dot=Z2;
end

function [z2dot]=f2(t,Z1,Z2)
    global m g l kt
    z2dot=(m*g*l*sin(Z1)-kt*Z1)/(m*l^2);
end