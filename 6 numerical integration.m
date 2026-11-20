clc; clear; format long;

% SUM 1: Integral of 1/(1+x^2) from 0 to 1
% SUM 2: Integral of sin(x) from 0 to pi
% SUM 3: Integral of x^2 from 0 to 2
% Logic: divide interval into n equal parts, then apply Trapezoidal
% and Simpson's 1/3 rules. n must be even for Simpson's rule.

f = {@(x) 1./(1+x.^2), @(x) sin(x), @(x) x.^2};
a = [0 0 0];
b = [1 pi 2];
names = {'1/(1+x^2)', 'sin(x)', 'x^2'};
n = 10;

for k = 1:3
    h = (b(k)-a(k))/n;
    x = linspace(a(k),b(k),n+1);
    y = f{k}(x);

    trap = h*(0.5*y(1) + sum(y(2:n)) + 0.5*y(n+1));
    simp = h/3*(y(1)+y(n+1) + 4*sum(y(2:2:n)) ...
                     + 2*sum(y(3:2:n-1)));
    exact = integral(f{k},a(k),b(k));

    fprintf('\\nSUM %d: %s\\n',k,names{k});
    fprintf('Trapezoidal = %.10f\\n',trap);
    fprintf('Simpson 1/3 = %.10f\\n',simp);
    fprintf('MATLAB integral = %.10f\\n',exact);
end
