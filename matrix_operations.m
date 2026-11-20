clc; clear; close all;

A = [5 8 9; 4 5 8; 7 8 9];
B = [7 5 7; 7 5 3; 3 5 5];

% SUM 1: Matrix addition and subtraction
disp('SUM 1 - A+B:'); disp(A+B)
disp('A-B:'); disp(A-B)

% SUM 2: Matrix multiplication and transpose
disp('SUM 2 - A*B:'); disp(A*B)
disp('Transpose of A:'); disp(A.')

% SUM 3: Determinant, rank and inverse
disp('SUM 3 - det(A):'); disp(det(A))
disp('rank(A):'); disp(rank(A))
disp('inv(A):'); disp(inv(A))
