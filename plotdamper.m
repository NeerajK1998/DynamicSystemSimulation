function plotdamper(stroke_length_max, damper_foot, damper_head,y_offset_d,clr_d,lnwdth);

%% DESCRIPTON
%
% Function plots a damper
%
%% INPUTS
%
% stroke_length_max ... Maximum stroke length from foot to head
% damper_foot ... position of damper foot
% damper_head ... position of damper head
% y_offset_d ... y offset of the damper
% clr_d ... Color of damper
% lnwdth ... Line width of faces
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
x_d(1) = damper_foot;
x_d(2) = damper_foot - stroke_length_max*0.02;
x_d(3) = damper_foot - stroke_length_max*0.02;
x_d(4) = damper_foot - stroke_length_max*0.02;
x_d(5) = damper_foot - stroke_length_max*0.9;
x_d(6) = damper_foot - stroke_length_max*0.9;
x_d(7) = damper_foot - stroke_length_max*0.1;
x_d(8) = damper_foot - stroke_length_max*0.1;
x_d(9) = damper_foot - stroke_length_max*0.1;
x_d(10) = damper_head;

y_d(1) = y_offset_d;
y_d(2) = 0.1 + y_offset_d;
y_d(3) = -0.1 + y_offset_d;
y_d(4) = y_offset_d;
y_d(5) = -0.1 + y_offset_d;
y_d(6) = 0.1 + y_offset_d;
y_d(7) = -0.09 + y_offset_d;
y_d(8) = 0.09 + y_offset_d;
y_d(9) = y_offset_d;
y_d(10) = y_offset_d;

z_d(1) = 0.1;
z_d(2) = -0.1;

vertices_d = [x_d(1) y_d(1) z_d(1); x_d(2) y_d(2) z_d(1); x_d(3) y_d(3) z_d(1); x_d(4) y_d(4) z_d(1);...
   x_d(5) y_d(5) z_d(1); x_d(6) y_d(6) z_d(1); x_d(7) y_d(7) z_d(1); x_d(8) y_d(8) z_d(1);... 
   x_d(9) y_d(9) z_d(1); x_d(10) y_d(10) z_d(1);...
   x_d(1) y_d(1) z_d(2); x_d(2) y_d(2) z_d(2); x_d(3) y_d(3) z_d(2); x_d(4) y_d(4) z_d(2);...
   x_d(5) y_d(5) z_d(2); x_d(6) y_d(6) z_d(2); x_d(7) y_d(7) z_d(2); x_d(8) y_d(8) z_d(2);... 
   x_d(9) y_d(9) z_d(2); x_d(10) y_d(10) z_d(2)];

faces = [1 4 14 11; 2 3 13 12; 3 5 15 13; 2 6 16 12; 7 8 18 17; 9 10 20 19];

%% 2.) -Translate Vertices
% none

%% 3.) Plot
patch('Vertices', vertices_d, 'Faces', faces, 'FaceColor', clr_d, 'EdgeColor', clr_d, 'linewidth', lnwdth);


%% 

end