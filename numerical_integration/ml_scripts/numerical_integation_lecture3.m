% ME 3001 - Mechanical Engineering Analysis
% Tristan Hill - Spring 2020
% Numerical Integration - Lecture 2 
clear variables;close all;clc

% create an array of time values
dt=.001;tstop=10;
t=0:dt:tstop;

% compute solution from derived equation
x_ex=2*cos(2*t)+3/4*sin(2*t)+1/2*t;

% validate solution with ODE45
iv=[2 2];     % intitial vals for dependent var

opts=odeset('Stats','off');
[t_45,x_45]=ode45(@ode_sys,t,iv,opts);

% plot the results of the method
figure(1);hold on
plot(t,x_ex,'r-','LineWidth',2)
plot(t_45,x_45(:,1),'b:','LineWidth',2)

grid on
str=sprintf('Solution to 3x''''+12x=6t, x(0)=2, x''(0)=2');
title(str)
legend('Analytical Solution','ODE45 Approximation')
xlabel('Time(s)');ylabel('x(t)')

% a function to use with ODE45
function [Zdots]=ode_sys(T,Z)  
    Zdots=zeros(2,1);
    Zdots(1)=Z(2);
    Zdots(2)=(5*T-12*Z(1))/3;
end


