% computing data
clc % clean the current terminal
% clear % delete all variables
% ***************  3.  computing data ***************
% --------- arithmetic matrix and element operation ---------------
A = [2 2 ;3 4; 6 6]
B = [11 12; 13 14; 15 16];
C = [1 1; 2 2];
mean(A)
std(A)
% A*C
% A .* B  %coresponding element multiply ("." often means element operation)
% A .^ 2 % don't forget that space
% 1 ./ A
% v= [1;2;3]
% 1 ./ v
% log(v) % element-wize operation
% exp(v)
% abs(v)
% -v
% v + ones(length(v),1) % v +1
% v + 1
% ---------------- others --------------
% A' % transpose
% a = [ 1 15 2 0.5]
% val = max(a)
% [val inddex] = max(a) 
% max(A) % max value in each column
% a<3 % element-wise compasion
% % find(a<3) % return indexs in a where element smaller than 3
% A = magic(3)% magic square: all or their rows and columns anddiagonals sum up to the same thing
% [r,c] = find(A >= 7) % row and column of elements >= 7
% sum(a) % add all elements in a
% prod(a) % products of all elements in a
% floor(a) % round down each element
% ceil(a) % round up
% max(A, [], 1) % 1 means take the first dimension of A(column)
% max(A, [], 2) % 2 means take the second dimension of A(row)
% max(max(A)) % max element in a matrix
% max(A(:)) % max element in a matrix
% A = magic(9)
% sum(A,1) % each column of A and add it up = [369 ... 369]
% sum(A,2) % each row of A and add it up = [369; ... ;369]
% sum(sum(A .* eye(9))) % sum of the main diagonal
% sum(sum(A .* flipud(eye(9)))) % sum of the vice diagonal

% A = magic(3)
% pinv(A) % M-P inverse
% inv(A) % inverse

