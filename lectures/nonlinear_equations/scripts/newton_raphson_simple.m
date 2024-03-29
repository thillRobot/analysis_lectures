%% 
% ME3001 - Tennessee Technological University
% Tristan Hill, September 12, 2019 - September 04, 2020 - January 27, 2024
% Module 2 - Non Linear Equations
% Topic 3 - Newton Raphson Method - Example 1
%%
close all; clear all; clc

%% plot for graphical verification
x=-5:0.1:5;
for i=1:length(x)

    y(i)=x(i)^3-5*x(i)^2+10;
    
end

figure(1)
plot(x,y)
grid on

%% solve with the Newton-Raphson Method
xo=0.1;
x_guess=xo;

for i=1:10

    x_guess=x_guess-(x_guess^3-5*x_guess^2+10)/(3*x_guess^2-10*x_guess);

end

root=x_guess
