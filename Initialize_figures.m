%% DESCRIPTON
%
% This is a script to initialize the figures for an animation and a graph
%
%% OUTPUT
%
% Formatted figure of the displacement of single mass and system and its
% animation
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
clr = [236/255 237/255 237/255];
unts = 'normalized';
lnwdth = 2;
fntsz = 22;

%% 1.) -Positions, titles and lables
pos_fig = [0.01 0.25 0.75 0.65];
title_graph = 'Displacement and velocity vs time';
title_ani = 'Undamped tied one mass system';
xlabel_ani = 'Displacement x [m]';
xlabel_graph = 'Time t [s]';
ylabel_graph{1} = 'Displacement x [m]';
ylabel_graph{2} = 'velocity v [m/s]';

%% 3.) Plot
%% 3.) -Initialize Figures
fig = figure('color',clr,'units',unts,'position',pos_fig);
subplot(1,2,2)
graph_plot = plot(1,1,1,1);
set(graph_plot(1),'color','k','linewidth',lnwdth);
set(graph_plot(2),'color','r','linewidth',lnwdth);
axes_graph(1) = gca;
set(axes_graph(1),'FontSize', fntsz);
axes_graph(2) = axes('Position',axes_graph(1).Position,'YAxisLocation','right','YColor','r','Color','none','XTickLabel',[],'FontSize',fntsz);
linkaxes([axes_graph(1) axes_graph(2)], 'x');
xlabel(axes_graph(1), xlabel_graph, 'FontSize',fntsz);
ylabel(axes_graph(1), ylabel_graph, 'FontSize',fntsz);
ylabel(axes_graph(2), ylabel_graph, 'FontSize',fntsz);
title(title_graph,'FontSize',fntsz);

set(axes_graph(1),'Ydir','reverse')
set(axes_graph(2),'Ydir','reverse')

x_t_max_limit = max(abs(x_t)) + 0.05*max(abs(x_t));
ylim(axes_graph(1),[-x_t_max_limit,x_t_max_limit]);

v_t_max_limit = max(abs(v_t)) + 0.05*max(abs(v_t));
ylim(axes_graph(2),[-v_t_max_limit,v_t_max_limit]);

xlim(axes_graph(1), [time(1) time(end)]);

subplot(1,2,1)
axes_ani = gca;
set(axes_ani, 'FontSize', fntsz);
set(axes_ani, 'Color', clr);
set(axes_ani, 'XDir', 'reverse');
xlim([-3*x_t_max_limit, 4*x_t_max_limit]);
ylim([-2,2]);

title(title_ani, 'FontSize',fntsz);
xlabel(xlabel_ani, 'FontSize',fntsz);
