%% DESCRIPTON
%
% This is a script to draw mass
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
dimension_m = [(0.25*x_t_max_limit+0.01), 1, 0.2]; 
position_m = [abs(min(x_t)), 0, 0]; 
clr_m = 'r'; 

%% 3.)Plot
%% 3.) -Draw Mass
plotcube(axes_ani, dimension_m, position_m, clr_m);
