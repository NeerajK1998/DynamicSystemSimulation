%% DESCRIPTON
%
% This is a script to draw ground
%
%% OUTPUT
%
% Ground is drawn in animation
%
%% VERSION
% Author: Neeraj Kulkarni
% Creation date: 01/08/2024
% Matlab version: matlab online
%
%% REVISION
%
% V1.0 | 01-Aug-2024 | Neeraj Kulkarni | Creation
%
%% PROGRAM
%
%% 1.) Definitions
%% 1.) -General
dimension_g = [0.25*x_t_max_limit 2 2];
position_g = [abs(min(x_t))*2 0 0];
clr_g = 'k';

%% 3.)Plot
%% 3.) -Draw Ground
plotcube(axes_ani,dimension_g,position_g,clr_g);
