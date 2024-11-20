%% DESCRIPTON
%
% This is a script to initialize the Damper
%
%% OUTPUT
%
% Damper is drawn in animation
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
clr_d = 'k';
y_offset_d = -0.2;

damper_foot = position_g(1) - dimension_g(1)/2;
damper_head = x_t(1) + dimension_m(1)/2;

stroke_length_max = damper_foot + abs(min(x_t+dimension_m(1)/2));

%% 3.) Plot
%% 3.) -Draw Damper
plotdamper(stroke_length_max, damper_foot, damper_head,y_offset_d,clr_d,lnwdth);