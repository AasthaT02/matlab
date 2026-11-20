clc;
clear;
close all;

% ODE45 solves differential equations numerically.
% Higher-order equations are converted into first-order equations.

% SUM 1: First order, dy/dt = -y, y(0)=1
[t1,y1] = ode45(@(t,y) -y, [0 5], 1);


% SUM 2: Second order, y'' + y = 0
% Let Y(1)=y and Y(2)=y'
% Therefore, Y' = [y'; -y]

[t2,Y2] = ode45(@(t,Y) [Y(2); -Y(1)], ...
    [0 10], [1;0]);


% SUM 3: Third order, y''' + y = 0
% Let Y(1)=y, Y(2)=y', Y(3)=y''
% Therefore, Y' = [y'; y''; -y]

[t3,Y3] = ode45(@(t,Y) [Y(2); Y(3); -Y(1)], ...
    [0 10], [1;0;0]);


% SUM 4: Fourth order, y'''' + y = 0
% Let Y(1)=y, Y(2)=y', Y(3)=y'', Y(4)=y'''
% Therefore, Y' = [y'; y''; y'''; -y]

[t4,Y4] = ode45(@(t,Y) [Y(2); Y(3); Y(4); -Y(1)], ...
    [0 10], [1;0;0;0]);


% Plot all four solutions

figure;

subplot(4,1,1);
plot(t1,y1,'LineWidth',1.5);
grid on;
title('First Order Equation');
xlabel('t');
ylabel('y');

subplot(4,1,2);
plot(t2,Y2(:,1),'LineWidth',1.5);
grid on;
title('Second Order Equation');
xlabel('t');
ylabel('y');

subplot(4,1,3);
plot(t3,Y3(:,1),'LineWidth',1.5);
grid on;
title('Third Order Equation');
xlabel('t');
ylabel('y');

subplot(4,1,4);
plot(t4,Y4(:,1),'LineWidth',1.5);
grid on;
title('Fourth Order Equation');
xlabel('t');
ylabel('y');