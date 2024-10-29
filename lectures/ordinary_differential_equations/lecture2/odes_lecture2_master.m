%%
%   ME3001-002 Mechanical Engineering Analysis - TNTECH
%   Tristan Hill - April 01, 2020
%   
%   Ordinary Differential Equations - Lecture 3 
%   Validation of Analytical Solutions with ODE45
%%

clear variables;close all;clc

% define the system parameters
m=150;
c=6.5;
v0=3.0;
F=1;

% define an array of time values
time=0:1:100;

% compute the 'analytical' solution
vel=(v0-F*m/c)*exp(-c/m*time)+F*m/c;

% validate the solution with ODE45
opts=optimset('Display','none');
[t45,v45]=ode45(@vdot_model,time,v0,opts,F,m,c);

% show a graph of the solution
figure(1); hold on
plot(time,vel,'ro') %analytical solution
plot(t45,v45,'b*')  %numerical solution

title('Radio Flyer Simulation')
xlabel('Time(s)')
ylabel('Velocity(m/s)')
grid on
legend('analytical solution','numerical solution')
