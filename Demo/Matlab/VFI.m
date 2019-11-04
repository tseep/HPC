%% A simple income fluctuation problem
clear all
close all
clc

% Add path to Functions folder
addpath('.\Functions\')

% Create a polynomial grid for the assets
agrid = grid_polynomial(0.0, 1000.0, 1000, 2);

% 