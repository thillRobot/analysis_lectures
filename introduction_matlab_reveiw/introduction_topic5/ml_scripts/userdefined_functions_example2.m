%% 
% ME3001 - Mechanical Engineering Analysis Tennessee Technological University
% Tristan Hill, September 12, 2019 - September 04, 2020
% Module 1 - Intro to MATLAB
% Topic 5 - User Defined Functions Example 2 
% This program adds/substract/multiplys two arrays of numbers using functions!
%%
clear variables; clc

%%
% define two arrays 
num_A=[5 7 12 54 3]; 
num_B=[4 23 4 2 4];

%% test the functions 
for i=1:5 
    
    % call each function in a loop, pass in the ith element each iteration
    % define the ith element of a new array each iteration
    sum_AB(i)=add_numbers(num_A(i),num_B(i));
    diff_AB(i)=subtract_numbers(num_A(i),num_B(i));
    prod_AB(i)=multiply_numbers(num_A(i),num_B(i));
    
end

%% show the results
sum_AB
diff_AB
prod_AB

%% verify the answers
sum_AB_check=num_A+num_B
diff_AB_check=num_A-num_B
prod_AB_check=num_A.*num_B % Notice the 'element-wise' multiplication (.*)

%% Define functions below
function [C]=add_numbers(A,B) 

    C = A + B ; 
       
end

function [C]=subtract_numbers(A,B) 

    C = A - B ; 
       
end

function [C]=multiply_numbers(A,B) 

    C = A * B ; 
       
end