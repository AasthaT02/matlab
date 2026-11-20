clc;
clear;
format short;

% Regula Falsi Method for 3 sums

f = {
    @(x) x^3 - x - 2
    @(x) x^2 - 4
    @(x) cos(x) - x
};

a_values = [1, 1, 0];
b_values = [2, 3, 1];

for q = 1:3

    a = a_values(q);
    b = b_values(q);

    fa = f{q}(a);
    fb = f{q}(b);

    fprintf('\nSUM %d\n', q);
    fprintf('Iter\t a\t\t b\t\t c\t\t f(c)\n');

    if fa * fb >= 0
        fprintf('Invalid interval\n');
        continue;
    end

    % Display 4 iterations
    for i = 1:4

        c = (a*fb - b*fa)/(fb-fa);
        fc = f{q}(c);

        fprintf('%d\t %.6f\t %.6f\t %.6f\t %.6f\n', ...
            i,a,b,c,fc);

        if fa*fc < 0
            b = c;
            fb = fc;
        else
            a = c;
            fa = fc;
        end
    end

    % Calculate accurate root
    for i = 1:10000

        c = (a*fb - b*fa)/(fb-fa);
        fc = f{q}(c);

        if abs(fc) < 1e-10
            break;
        end

        if fa*fc < 0
            b = c;
            fb = fc;
        else
            a = c;
            fa = fc;
        end
    end

    fprintf('Final Root = %.10f\n',c);

end