
clc;
clear;
close all;

A = [5 8 9; 4 5 8; 7 8 9];
B = [7 5 7; 7 5 3; 3 5 5];

% 1. Addition
C = A + B;
disp('1. Addition:');
disp(C);

% 2. Subtraction
D = A - B;
disp('2. Subtraction:');
disp(D);

% 3. Multiplication
E = A * B;
disp('3. Multiplication:');
disp(E);

% 4. Inverse of A
F = inv(A);
disp('4. Inverse of A:');
disp(F);

% 5. Transpose of A
G = transpose(A);
disp('5. Transpose of A:');
disp(G);

% 6. Rank of A
H = rank(A);
disp('6. Rank of A:');
disp(H);

% 7. Determinant of A
I = det(A);
disp('7. Determinant of A:');
disp(I);

% 8. Eigenvalues and eigenvectors of A
[V,D1] = eig(A);
disp('8. Eigenvectors:');
disp(V);
disp('Eigenvalues:');
disp(D1);
% 9. Inverse, transpose, rank and determinant of B
f = inv(B);
g = transpose(B);
h = rank(B);
i = det(B);

disp('9. Inverse of B:');
disp(f);
disp('Transpose of B:');
disp(g);
disp('Rank of B:');
disp(h);
disp('Determinant of B:');
disp(i);

