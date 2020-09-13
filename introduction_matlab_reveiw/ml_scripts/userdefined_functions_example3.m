%% 
% ME3001 - Mechanical Engineering Analysis Tennessee Technological University
% Tristan Hill, September 12, 2020
% Module 1 - Introduction and MATLAB Review
% Topic 5 - User Defined Functions Example 3 
% This program adds/substract/multiplys two numbers using a single function
% the function is defined in separate file 'add_subtract_multiply.m'
%%
clear variables; clc

%% test the functions
num_A=input('Type a number: ');
num_B=input('Type a another number: ');

% notice there are three output arguments and two input arguments
[sum_AB,diff_AB,prod_AB]=add_subtract_multiply(num_A,num_B);

%% show the results
fprintf('\nThe sum is %.2f\nThe difference is %.2f\nThe product is %.2f\n',sum_AB,diff_AB,prod_AB);

%% verify the answers
sum_AB_check=num_A+num_B
diff_AB_check=num_A-num_B
prod_AB_check=num_A*num_B

%% The function is defined in a separate file 'add_subtract_multiply.m'
% put this file in the current folder 