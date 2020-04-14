%% ENGR1120
% Tristan Hill
% Lab 10 Starter Code - The Game of Life
%%

clear all
close all
clc

in_id=fopen('gol_map1.txt');

while ~feof(in_id)
    
    map(i,:)=fscanf(in_id,'%i\n')
    
end
