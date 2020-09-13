% this is me and this is my program
% this program adds two numbers, wow!

clear variables
clc

% num_A=input('Type a number: ')
% num_B=input('Type a another number: ')

num_A=[5 7 12 54 3]
num_B=[4 23 4 2 4]


sum_AB_check=num_A+num_B

sum_AB=add_numbers(num_A,num_B)
diff_AB=subtract_numbers(num_A,num_B)


for i=1:5 
    
    prod_AB(i)=multiply_numbers(num_A(i),num_B(i))
    
end






fprintf('The sum is %f\nThe difference is %f\nThe product is %f',sum_AB(1),diff_AB(1),prod_AB(1));

function [C]=add_numbers(A,B) 

    C = A + B ; 
       
end

function [C]=subtract_numbers(A,B) 

    C = A - B ; 
       
end

function [C]=multiply_numbers(A,B) 

    C = A * B ; 
       
end