clc; clear; close all;
syms t s a b

% SUM 1: f(t) = sinh(a*t)
% SUM 2: f(t) = exp(a*t)*cos(b*t)
% SUM 3: f(t) = 5 - 3*t - 2*exp(-t)
% Logic: define f(t), then use laplace(f,t,s).

f1 = sinh(a*t);
F1 = laplace(f1,t,s);

f2 = exp(a*t)*cos(b*t);
F2 = laplace(f2,t,s);

f3 = 5 - 3*t - 2*exp(-t);
F3 = laplace(f3,t,s);

disp('SUM 1:'); pretty(F1)
disp('SUM 2:'); pretty(F2)
disp('SUM 3:'); pretty(F3)
