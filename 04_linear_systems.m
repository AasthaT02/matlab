
clc;
clear;
format short;

% ==========================================
% PRACTICAL 5: NUMERICAL SOLUTION OF LINEAR SYSTEMS
% ==========================================

% SUM 1: Backslash and LU Decomposition
A1 = [10 -1  2;
      -1 11 -1;
       2 -1 10];
b1 = [6; 25; -11];

disp('========== SUM 1 ==========');

x1 = A1 \ b1;
fprintf('Backslash Solution:\n');
disp(x1);

[L, U, P] = lu(A1);
x1_LU = U \ (L \ (P * b1));

fprintf('LU Decomposition Solution:\n');
disp(x1_LU);


% SUM 2: Backslash Method
A2 = [8 -1  1;
     -1  9 -2;
      2 -1 10];
b2 = [8; -4; 12];

disp('========== SUM 2 ==========');

x2 = A2 \ b2;

fprintf('Solution:\n');
disp(x2);


% SUM 3: Backslash Method
A3 = [6  1  1;
      1  7 -1;
      2 -1  8];
b3 = [9; 7; 10];

disp('========== SUM 3 ==========');

x3 = A3 \ b3;

fprintf('Solution:\n');
disp(x3);


% SUM 4: Four Unknowns
A4 = [10 -1  1  1;
      -1 10 -1  1;
       1 -1 10 -1;
       1  1 -1 10];
b4 = [10; 20; 30; 40];

disp('========== SUM 4 ==========');

x4 = A4 \ b4;

fprintf('Solution:\n');
disp(x4);


% SUM 5: LU Decomposition
A5 = [4 1 1;
      1 5 2;
      2 1 6];
b5 = [9; 13; 17];

disp('========== SUM 5 ==========');

[L, U, P] = lu(A5);
x5 = U \ (L \ (P * b5));

fprintf('LU Decomposition Solution:\n');
disp(x5);


% SUM 6: Gauss-Seidel Method
A6 = [10 1  1;
       1 10 1;
       1  1 10];
b6 = [12; 13; 14];

x6 = zeros(3, 1);
tol = 1e-6;
maxIter = 1000;

for k = 1:maxIter
    old = x6;

    for i = 1:3
        s1 = A6(i, 1:i-1) * x6(1:i-1);
        s2 = A6(i, i+1:3) * old(i+1:3);

        x6(i) = (b6(i) - s1 - s2) / A6(i, i);
    end

    if norm(x6 - old, inf) < tol
        break;
    end
end

disp('========== SUM 6 ==========');

fprintf('Gauss-Seidel Solution:\n');
disp(x6);

fprintf('Number of Iterations: %d\n', k);


% SUM 7: Compare Three Methods
A7 = [12 -1  1;
      -1 12 -1;
       1 -1 12];
b7 = [12; 11; 10];

disp('========== SUM 7 ==========');

% Backslash Method
x7_backslash = A7 \ b7;

fprintf('Backslash Solution:\n');
disp(x7_backslash);

% LU Decomposition
[L, U, P] = lu(A7);
x7_LU = U \ (L \ (P * b7));

fprintf('LU Decomposition Solution:\n');
disp(x7_LU);

% Gauss-Seidel Method
x7_GS = zeros(3, 1);

for k = 1:maxIter
    old = x7_GS;

    for i = 1:3
        s1 = A7(i, 1:i-1) * x7_GS(1:i-1);
        s2 = A7(i, i+1:3) * old(i+1:3);

        x7_GS(i) = (b7(i) - s1 - s2) / A7(i, i);
    end

    if norm(x7_GS - old, inf) < tol
        break;
    end
end

fprintf('Gauss-Seidel Solution:\n');
disp(x7_GS);


% SUM 8: Solution and Residual
A8 = [7 -1  1;
     -1  8 -1;
      1 -1  9];
b8 = [5; 10; 15];

disp('========== SUM 8 ==========');

x8 = A8 \ b8;

fprintf('Solution:\n');
disp(x8);

residual8 = A8 * x8 - b8;

fprintf('Residual:\n');
fprintf('%.6f\n', residual8);

% Display all residual values in one line if preferred:
% fprintf('Residual: %.6f  %.6f  %.6f\n', residual8);


% SUM 9: Solution and Residual Norm
A9 = [9 -1  1;
     -1 10 -1;
      1 -1 11];
b9 = [7; 8; 9];

disp('========== SUM 9 ==========');

x9 = A9 \ b9;

fprintf('Solution:\n');
disp(x9);

residualNorm = norm(A9 * x9 - b9, inf);

fprintf('Residual norm: %.10f\n', residualNorm);

% ==========================================
% END OF PRACTICAL 5
% ==========================================


