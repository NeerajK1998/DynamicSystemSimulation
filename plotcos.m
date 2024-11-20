function plotcos(x_ar, variable_cos, clr_cos, lnwdth, fntsz);

%% DESCRIPTON
%
% Function plots a cos
%
%% INPUTS
%
% x_ar ... length of the arrow
% variable_cos ... variable of the coordinate system
% clr_cos ... Color of the coordinate system
% lnwdth ... Linewidth of the faces
%
%% OUTPUT
% 
% Plot of the damper on desired axis
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
% none needed
%
%% 2.) Computing
%% 2.) -Calculate vertics and faces
y_offset_cos = 0.7;

x_cos(1) = 0;
x_cos(2) = 0;
x_cos(3) = 0;
x_cos(4) = 0.6*x_ar;
x_cos(5) = 0.6*x_ar;
x_cos(6) = 1*x_ar;

y_cos(1) = -20*x_ar + y_offset_cos;
y_cos(2) = 20*x_ar + y_offset_cos;
y_cos(3) = y_offset_cos;
y_cos(4) = -16*x_ar + y_offset_cos;
y_cos(5) = 16*x_ar + y_offset_cos;
y_cos(6) = y_offset_cos;

z_cos(1) = 0.1;
z_cos(2) = -0.1;

vertices_cos = [x_cos(1) y_cos(1) z_cos(1); x_cos(2) y_cos(2) z_cos(1); x_cos(3) y_cos(3) z_cos(1); x_cos(4) y_cos(4) z_cos(1);...
    x_cos(5) y_cos(5) z_cos(1); x_cos(6) y_cos(6) z_cos(1);...
    x_cos(1) y_cos(1) z_cos(2); x_cos(2) y_cos(2) z_cos(2); x_cos(3) y_cos(3) z_cos(2); x_cos(4) y_cos(4) z_cos(2);...
    x_cos(5) y_cos(5) z_cos(2); x_cos(6) y_cos(6) z_cos(2)];

faces_cos = [1 2 8 6; 3 6 12 9; 4 6 12 10; 5 6 12 11];



%% 2.) -Translate Vertices
% none

%% 3.) Plot
patch('Vertices', vertices_cos, 'Faces', faces_cos, 'FaceColor', clr_cos, 'EdgeColor', clr_cos, 'linewidth', lnwdth);

text(x_cos(4), y_cos(2), variable_cos, 'Color', clr_cos, 'FontSize', fntsz);


%% 

end