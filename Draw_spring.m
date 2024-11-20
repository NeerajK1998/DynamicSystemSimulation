%% DESCRIPTON
%
% This is a script to initialize the spring
%
%% OUTPUT
%
% Spring is drawn in animation
%
%% VERSION
% Author: Neeraj Kulkarni
% Creation date: 08/08/2024
% Matlab version: matlab online
%
%% REVISION
%
% V1.0 | 08-Aug-2024 | Neeraj Kulkarni | Creation
%
%% PROGRAM
%
%% 1.) Definitions
%% 1.) -General
spring_number_windings = 8;
spring_radius= 0.1;
phi_max = 2*pi*spring_number_windings;
phi_s = 0:pi/50:phi_max;
y_offset_s = 0.2;
y_pos_spring = spring_radius*sin(phi_s)+y_offset_s;
z_pos_spring = spring_radius*cos(phi_s);
spring_foot = position_g(1) - dimension_g(1)/2;
spring_head = x_t(1) + dimension_m(1)/2;

%% 3.) Plot
%% 3.) -Draw Spring
x_pos_spring = phi_s/phi_max*(spring_head-spring_foot) + spring_foot;
plot3(axes_ani, x_pos_spring, y_pos_spring, z_pos_spring, 'b','LineWidth',lnwdth);
