%% DESCRIPTON
%
% This is a script to solve the equation with state space representation
%
%% OUTPUT
%
% Solution of equation of motion
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
stiffness          = 50000;
damping            = 0;
time               = 0:0.01:2;

x_0 = 0.01;
x_dot_0 = 0;

%% 2.) Computing
w0 = [x_0, x_dot_0];

%% 2.) -Numerical solution of the motion
[tsim, wsim] = ode45(@state_space_equation, time, w0, [], mass, stiffness, damping);

time = tsim';
x_t = wsim(:,1)';
v_t = wsim(:,2)';









