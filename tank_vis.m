clear all;
close all;
clc;

%% parameters

rho = 1000; % water density [kg/m^3]
D = 1; % tank diameter [m]
hO = 2; % initial water height [m]
g = 9.81; % gravitational acceleration [m/s^2]
c = 0.1; % valve coefficient [kg/s/Pa]

%% Derived Quantities
% Exponential time multiplier
k = 4*c*g/D^2/pi; 

% time to reach half-empty level

t_half = (pi*D^2*log(2))/ (4*c*g);

t_empty = (pi*D^2*log(1000))/ (4*c*g);

h_avg = hO / (2*log(2));

%% time

t = linspace(0,t_empty,1001);

%Solution function

h = hO * exp (-k*t);

%% Plotting

figure(1)
plot(t,h, 'r--', 'LineWidth', 2)






