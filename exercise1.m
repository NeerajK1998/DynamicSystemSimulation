%% Description
%
% This is a script to solve the differential equation of a single mass
% system
%
%% Output
%
% Formatted figure of the displacement of a single mass system and its
% animation
%
%% Version
%
% author: Neeraj Kulkarni
% creation date : 13/07/2024
% matlab version R2023a - academic use
%
%% Revision
%
% V1.0 | 13-07-2024 | Neeraj Kulkarni | creation
% V1.1

%% Program
clear % Delete the workspace
clc % Clear command window
close all % Close all figures 

%% 1.) Definition
%% 1.) - Parameter definition 
mass = 750; % mass of the body in Kg
stiffness = 50000; % [N/m]
time = 0:0.01:2 % time[s] goes from 0 to 1 with a step of 0.01

x_0 = 0.01; % [m]
x_dot_0 = 0; % [m/s]

%% 1.) -symbolic function definition
syms x(t)
Dx  = diff(x,1);
D2x = diff(x,2);

%% 2.) Computing 
%% 2.) - solve the equation
x = dsolve( mass*D2x + stiffness*x == 0, x(0) == x_0, Dx(0)== x_dot_0, 't');

%% 2.) -Evaluate the equation 
x_fun = matlabFunction(x);
x_dot_fun = matlabFunction(diff(x));

x_t = x_fun(time);
v_t = x_dot_fun(time);

%% 2.) -Calculate Amplitude 
x_roof = max(abs(x_t));

%% 2.) -Calculate time period
[maxima, max_location] = findpeaks(x_t, time);
time_period = diff(max_location);

%% 2.) -Calculate eigenfrequency and angular frequency
frequency = 1/time_period(1);
angular_eigenfrequency= 2*pi*frequency;

%% 2.) -Calculate phase angle
temp_variable = diff(sign(v_t));
indx_up = find(temp_variable > 0);
indx_down = find(temp_variable < 0);
indx_up_time = time(indx_up);
indx_down_time = time(indx_down);
indx_down_time_re = [indx_down_time(1,2) indx_down_time(1,3)];
first_zero_crossing = min([indx_up_time indx_down_time_re]);
phase_angle_rad = angular_eigenfrequency*first_zero_crossing;
phase_angle_degree = (180/pi)*phase_angle_rad;

%% 3.) Plot 
%% 3.) -Plot parameters
 clr = [236/255 237/255 237/255];
unts = 'normalized';
lnwdth = 2;
fnttsz = 22; 
pos_fig = [0.01 0.1 0.98 0.8];
title_graph = 'displacement and velocity vs time';
xlabel_graph = 'Time t [s]';
ylabel_graph{1} = 'Displacement x [m]';
ylabel_graph{2} = 'Velocity v [m/s]';

%% 3.) -Plot graph
fig = figure('color', clr, 'units', unts, 'position', pos_fig);
[axes_graph, Line1, Line2] = plotyy(time, x_t, time, v_t);
set(Line1, 'color', 'k', 'linewidth', lnwdth);
set(Line2, 'color', 'r', 'linewidth', lnwdth);
set(axes_graph(1), 'Ycolor', 'k', 'linewidth', lnwdth, 'fontsize', fnttsz);
set(axes_graph(2), 'Ycolor', 'r', 'linewidth', lnwdth, 'fontsize', fnttsz);

xlabel(axes_graph(1), xlabel_graph,'fontsize', fnttsz);
ylabel(axes_graph(1), ylabel_graph{1},'fontsize', fnttsz);
ylabel(axes_graph(2), ylabel_graph{2},'fontsize', fnttsz);

title(title_graph);

x_t_max_limit = max(abs(x_t)) + 0.05*max(abs(x_t));
ylim(axes_graph(1),[-x_t_max_limit,x_t_max_limit]);

v_t_max_limit = max(abs(v_t)) + 0.05*max(abs(v_t));
ylim(axes_graph(2),[-v_t_max_limit,v_t_max_limit]);





