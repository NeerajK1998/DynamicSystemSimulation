%% DESCRIPTON
%
% This is a script to solve the differential equation of a single mass 
% system
%
%% OUTPUT
%
% Formatted figure of the displacement of single mass and system and its
% animation
%
%% VERSION
% Author: Neeraj Kulkarni
% Creation date: 22/07/2024
% Matlab version: matlab online
%
%% REVISION
%
% V1.0 | 22-Jul-2024 | Neeraj Kulkarni | Creation
%
%% PROGRAM
clear
clc
close all   % closes all figures

%% 1.) Definition
%% 1.) -Parameter Definitions
mass               = 750;
stiffness          = 1000000;
damping            = 5000;
time               = 0:0.01:2;

x_0 = 0.01;
x_dot_0 = 0.1;

%% 2.) Computing
%% 2.) -Parameter calculation
dampingcoefficient = damping/(2*mass);
angulareigenfrequency = sqrt(stiffness/mass);

%% 2.) -Calculation of the characteristic polynomail
lambda = roots([1,2*dampingcoefficient,angulareigenfrequency^2]);

%% 2.) -Calculation of the constants
k1 = (x_dot_0 - lambda(2)*x_0)/(lambda(1)-lambda(2));
k2 = (lambda(1)*x_0 - x_dot_0)/(lambda(1)-lambda(2));

%% 2.) -Calculation of the solution
x_t_h = k1*exp(lambda(1)*time) + k2*exp(lambda(2)*time);
v_t_h = k1*lambda(1)*exp(lambda(1)*time) + k2*lambda(2)*exp(lambda(2)*time);

x_t = real(x_t_h);
v_t = real(v_t_h);

%% 3.) Plot
%% 3.) -Initialize Figures
run("Initialize_figures.m");

%% 3.) -Draw Ground
hold on;
run("Draw_ground.m");

%% 3.) -Draw Mass
run("Draw_mass.m");

%% 3.) -Draw Spring
run("Draw_spring.m");

%% 3.) -Draw damper
run("Draw_damper.m");


%% 3.) -Draw cos
run("Draw_cos.m");

%% 3.) -Plot animation
% initialize vectors

x_t_length = length(x_t);
t_plot = NaN(1,x_t_length);
x_t_plot = NaN(1,x_t_length);
v_t_plot = NaN(1,x_t_length);

u = 1;
for k = 1:x_t_length
    cla

    % Plot Graph
    t_plot(k) = time(u);
    x_t_plot(k) = x_t(u);
    v_t_plot(k) = v_t(u);

    set(graph_plot(1),'Parent', axes_graph(1),'XData',t_plot,'YData',x_t_plot);
    set(graph_plot(2),'Parent', axes_graph(2),'XData',t_plot,'YData',v_t_plot);

    %Plot Ground
    plotcube(axes_ani, dimension_g, position_g,clr_g);

    %Plot
    position_m = [x_t(u) 0 0];
    plotcube(axes_ani, dimension_m, position_m,clr_m);
    
    %Plot spring
    spring_head = x_t(u) + dimension_m(1)/2;
    x_pos_spring = phi_s/phi_max*(spring_head - spring_foot) + spring_foot;
    plot3(axes_ani, x_pos_spring, y_pos_spring, z_pos_spring, 'b','linewidth',lnwdth);

    % Plot Damper
    damper_head = x_t(u) + dimension_m(1)/2;
    plotdamper(stroke_length_max, damper_foot, damper_head, y_offset_d,clr_d,lnwdth);

    %Plot Cos
    plotcos(x_ar, variable_cos, clr_cos, lnwdth, fntsz);

    % Rotate View
    view(90,-90);

    title(title_ani,'FontSize',fntsz);
    xlabel(xlabel_ani,'fontsize',fntsz);

    drawnow

    u=u+1;

end















