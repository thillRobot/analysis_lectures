%% 
% ME3001 - Mechanical Engineering Analysis Tennessee Technological University
% Tristan Hill, September 12, 2019 - September 04, 2020
% Module 1 - Introduction and MATLAB Review
% Topic 5 - User Defined Functions Example 1 
% This program adds/substract/multiplys two numbers using functions!
%%
clear variables; clc

%% test the functions
num_A=input('Type a number: ');
num_B=input('Type a another number: ');

sum_AB=add_numbers(num_A,num_B);
diff_AB=subtract_numbers(num_A,num_B);
prod_AB=multiply_numbers(num_A,num_B);

%% show the results
fprintf('\nThe sum is %.2f\nThe difference is %.2f\nThe product is %.2f\n',sum_AB,diff_AB,prod_AB);

%% verify the answers
sum_AB_check=num_A+num_B
diff_AB_check=num_A-num_B
prod_AB_check=num_A*num_B

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