% ME 3001 - Mechanical Engineering Analysis
% Tristan Hill - Spring 2020
% Numerical Integration - Lecture 1 
clear variables;close all;clc

% define the constant parameters
m=100;c=1.5;v0=2.0;
dt=1.0;tstop=60;

% create an array of time values
time=0:dt:tstop;
% compute solution from derived equation
v_exact=v0*exp(-c/m*time);

% approximate with Euler's forward integration
v_eu(1)=v0;
for j=1:length(time)-1
    v_eu(j+1)=v_eu(j)+(f(time(j),v_eu(j),m,c))*dt;  
end

% plot the results of both methods
figure(1);hold on
plot(time,v_exact,'r-','LineWidth',2)
plot(time,v_eu,'b*')

% add some labels
title('Radio Flyer: mdv/dt+cv=0, v(t=0)=v0')
legend('Exact','Euler''s')
xlabel('Time (s)')
ylabel('Velocity')
grid on


% If this is an 'Inline Definition' of the function 
% it MUST go at the bottom of the script
function [dvdt]=f(t,v,M,C)
    dvdt=-C/M*v;
end



