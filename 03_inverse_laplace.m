clc; clear; close all;
syms s t

% SUM 1: F(s) = 3/(s+4)
% SUM 2: F(s) = s/(s^2+9)
% SUM 3: F(s) = 1/(s*(s+2))
% Logic: define F(s), then use ilaplace(F,s,t).

F1 = 3/(s+4);
f1 = ilaplace(F1,s,t);

F2 = s/(s^2+9);
f2 = ilaplace(F2,s,t);

F3 = 1/(s*(s+2));
f3 = ilaplace(F3,s,t);

disp('SUM 1:'); pretty(f1)
disp('SUM 2:'); pretty(f2)
disp('SUM 3:'); pretty(f3)
