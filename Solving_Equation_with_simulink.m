%% DESCRIPTON
%
% This is a script to solve the equation with simulink
%
%% OUTPUT
%
% Formatted figure of the displacement of single mass and system and its
% animation
%
%% VERSION
% Author: Neeraj Kulkarni
% Creation date: 10/08/2024
% Matlab version: matlab online
%
%% REVISION
%
% V1.0 | 10-Aug-2024 | Neeraj Kulkarni | Creation
%
%% PROGRAM
clear
clc
close all   % closes all figures

%% 1.) Definition
%% 1.) -Parameter Definitions
mass               = 750;
stiffness          = 5000;
damping            = 100;
time               = 0:0.01:1;

x_0 = 0.01;
x_dot_0 = 0.1;

%% 2.) Computing
open_system('solve_eqn');
simOut = sim('solve_eqn');

% Accessing the output directly
x_t = simOut.simout.data;

%% 2.) Computing
%open_system('solve_eqn');
%sim('solve_eqn');

%x_t = simOut.get('simout').data;