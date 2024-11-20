function plotcube(axis, dimension, position, clr_c);

%% DESCRIPTON
%
% Function plots a defined cube into the selected axis
%
%% INPUTS
%
% axis... axis where you want the plot to appear
% dimension... length(x), width(y),height(z) of the cube
% position... position of the center of the cube
% clr_c... color of the cube
%
%% OUTPUT
% 
% Plot of the cube on desired axis
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
% none needed
%
%% 2.) Computing
x_c(1) = -dimension(1)/2;
x_c(2) = dimension(1)/2;
x_c(3) = dimension(1)/2;
x_c(4) = -dimension(1)/2;
x_c(5) = -dimension(1)/2;
x_c(6) = dimension(1)/2;
x_c(7) = dimension(1)/2;
x_c(8) = -dimension(1)/2;

y_c(1) = dimension(2)/2;
y_c(2) = dimension(2)/2;
y_c(3) = -dimension(2)/2;
y_c(4) = -dimension(2)/2;
y_c(5) = dimension(2)/2;
y_c(6) = dimension(2)/2;
y_c(7) = -dimension(2)/2;
y_c(8) = -dimension(2)/2;

z_c(1) = -dimension(3)/2;
z_c(2) = -dimension(3)/2;
z_c(3) = -dimension(3)/2;
z_c(4) = -dimension(3)/2;
z_c(5) = dimension(3)/2;
z_c(6) = dimension(3)/2;
z_c(7) = dimension(3)/2;
z_c(8) = dimension(3)/2;

vertices_c = [x_c(1) y_c(1) z_c(1); x_c(2) y_c(2) z_c(2); x_c(3) y_c(3) z_c(3); x_c(4) y_c(4) z_c(4); x_c(5) y_c(5) z_c(5); x_c(6) y_c(6) z_c(6); x_c(7) y_c(7) z_c(7); x_c(8) y_c(8) z_c(8)];

faces_c = [4 3 2 1; 2 3 7 6; 3 4 8 7; 1 2 6 5; 2 3 7 6; 1 4 8 5];

%% 2.) -Translate Vertices
vertices_translated = [vertices_c(:,1)+position(1) vertices_c(:,2)+position(2) vertices_c(:,3)+position(3)];

%% 3.) Plot
patch(axis, 'Vertices', vertices_translated, 'Faces', faces_c, 'FaceColor', clr_c, 'EdgeColor', clr_c);


%% 

end