% moving data around
clc
% ***************  2.  moving data around ***************
% % --------size & length------------
% A = [1 2 ;3  4; 5 6]
% % size(A) % size of all dimensions, here is  a 1*2 row vector
% % size(A,1)
% % size(A,2)
% v = [1 2 3 4]
% length(v)
% length(A)  % length returns to the size of the longest dimension (here is 3
% length([1;2;3;4;5])
% pwd  % print  working direction
% % cd 'D:\documents\Îâ¶÷´ï»úÆ÷Ñ§Ï°\MATLAB-examples'
% ls % list directories
% % --------------- import data: load -----------
load ex1data1.txt % var can be divided by ',',' ','\t', not '|' or ';'
load('ex1data1.txt') %  same as load ex1data1.txt
data = csvread('ex1data2.txt');
ex1data1
% % --------------- show variables: who & whos -----------
% who % show all variable names 
% whos % show all variables with details (name, size, bytes, class,attributes)
% clear A
% who
% % --------------- part of a vector -----------
% rowVec = 1:100;
% v = rowVec(1:10) % the first ten elements of the row vector
% % --------------- save data -----------
% save hello.mat v; % save v in to a file named 'hellow.mat'(binary format)
% clear
% load('hello.mat') %  reload the data to get v
% save hello.txt v -ascii 
% % --------------- manipulate data -----------
A = [1 2 ;3  4; 5 6];
B = 3 * A;
% A(3,2)
% A(2,:) % ":" means every element along that row/column
% A(:,2)
% A([1 3],:) % get the 1st and 3rd row, all columns
% A(:,2) = [10; 11; 12]
% A = [A, [100; 101; 102] ]% append another column vector to right
% A(:) % put all elements of A into a single vector
% C = [A B] % C = put B at the right of A
% C = [A;B] % C = put B at the bottom of A,";" often means go to the next line
[A B]
[A,B] % same as [A B]

