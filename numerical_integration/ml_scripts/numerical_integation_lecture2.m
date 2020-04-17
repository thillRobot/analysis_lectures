% ME 3001 - Mechanical Engineering Analysis
% Tristan Hill - Spring 2020
% Numerical Integration - Lecture 2 
clear variables;close all;clc

% define the constant parameters
global m g l kt;

m=2;g=9.8;
l=42*(1/100);kt=6;

% initial conditions
theta0=15;
omega0=0;

% create an array of time values
dt=.001;tstop=10;
time=0:dt:tstop;

% approximate with Euler's forward integration
z1_eu(1)=theta0*pi/180; %u1, initial theta
z2_eu(1)=0;  %u2, initial omega

for j=1:length(time)-1
    z1_eu(j+1)=z1_eu(j)+f1(time(j),z1_eu(j),z2_eu(j))*dt;  
    z2_eu(j+1)=z2_eu(j)+f2(time(j),z1_eu(j),z2_eu(j))*dt;
end

% plot the results of the method
figure(1);hold on
plot(time,z1_eu,'r')
plot(time,z2_eu,'b')
grid on
title('Non-Linear Pendulum')
legend('Angular Position (rad)','Angular Velocity (rad/s)')
xlabel('Time(s)')
axis([0 tstop -3 3])

function [dz1dt]=f1(t,z1,z2)
    global m g l kt;
    dz1dt=z2;
end

function [dz2dt]=f2(t,z1,z2)
    global m g l kt;
    dz2dt=(m*g*l*sin(z1)-kt*z1)/(m*l^2);
end