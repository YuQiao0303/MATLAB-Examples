```

% ***************  1.  basic operation ***************
% arithmetic operation
% 5+6
% 10-8
% 2^4
% sqrt(64)
% log(10)
% exp(2)
% abs(-10) %absolute value
% % logical operation
% 1 == 0 
% 1 ~= 0
% 0 && 1 % and
% 0 || 1 % or
% xor(1,0) % xor
% % --------------- variable -----------
% a = 3
% a = 3; % semicolon suppressing output
% b = 'hi'; % single quotes
% b
% c = (3>=1)

% % print 
% a = pi;
% disp(a);
% fprintf('2 decimals: %0.2f\n',a);
% fprintf('2 decimals: %0.6f\n',a);

% % -------- vector & matrix -----------
% a = [1 2; 3 4; 5 6]
% a = [1 2; 
%     3 4; 
%     5 6]
% rowVec = [1 2 3 4 ] %  row vector,1*3 matrix ( n of rows * number of cols)
% colVec = [1;2;3;4 ] % col vector, 3*1 matrix
% v = 1:0.1:2  % start , increment step, end at(including)
% v = 1:6 % defalt increment step is 1
% eye(6) % identity matrix
% zeros(3,2)
% ones(2,3)
% 2* ones(2,3)
% rand(1,3) % all elements between 0 & 1
% randn(1,3) % three elements , gaussian distribution, mean: zero,standard deviation : 1
% w = -6 + sqrt(10) * randn(1,1000);
% % hist(w); % histogram
% hist(w,50); % 50 is number of bins
% % ----------- help ---------------
help rand

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
% % cd 'D:\documents\吴恩达机器学习\MATLAB-examples'
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
% plotting data
clc 
% ***************  4.  plotting data ***************
% --------- basic plot ---------------
% t = 0:0.01:0.98;
% y1 = sin(2*pi*4*t);
% plot(t,y1);
% % plot(x,y,点的样式(r=red,x为叉型),标记大小,设置标记大小为10)
% plot(t,y1,'rx','MarkerSize',10);
% --------- multipul plots ------------------
% hold on; %plot the new figure on top of the old one
% y2 = cos(2*pi*4*t);
% plot(t,y2); 
% --------- multipul plots ------------------
% xlabel('time'); % lable for x axis
% ylabel('value');
% legend('sin','cos');
% title('my plot');
% print -dpng 'myPlog.png';  % save the figure
% close % close the window of the fiture
% help plot
% % figure(1); plot(t,y1);
% figure(2); plot(t,y2); % plot in different windows/figures
% subplot(1,2,1); plot(t,y1);%devides plot a 1×2 trid, access first element
% subplot(1,2,2); plot(t,y2);%devides plot a 1×2 trid, access second element
% axis([0.5 1 -1 1]) % x axis range to 0.5 ~1, y ranges to -1~1
% clf; % clear figure

% visualize a matrix
% A = magic(5)
% imagesc(A), colorbar, colormap gray % show colorbar, make it gray

% -------------- 3D figure -----------
x = 1:5;
y = 1:5;

z = zeros(5,5);
for i = 1:5
    for j = 1:5
        z(i,j) = x(i) * y(j);
    end
end
z
surf(x,y,z);
figure(2); contour(x,y,z,logspace(-2, 3, 20))



% computing data
clc % clean the current terminal
% clear % delete all variables
% ***************  5.  For,while,if,function ***************
% no () no ; only end
% --------- For ---------------
v = zeros(10,1);
% for i = 1:10
%     v(i) = 2^i;
% end;
% v
% 
% indices = 1:10;
% for i = indices
%     v(i) = 3^i;
% end;
% v
% --------- while ---------------
% i = 1;
% while i<=5
%     v(i) = 100;
%     i = i+1;
% end
% v

% i = 1;
% while true
%     v(i) = 999;
%     i = i+1;
%     if i == 6
%         break;
%     end
% end
% v

% -------- if else---------
% v(1) = 2;
% if v(1) == 1
%     disp('the value is 1');
% elseif v(1) == 2,
%     disp('the value is 2');
% else
%     disp('not 1 or 2');
% end
% --------------- function ----------------
% % we use three functions:
% % squareThisNumber,squareAndCubeThisNumber,costFunctionJ

% squareThisNumber(4) % put the function file in current dir
% [a,b] = squareAndCubeThisNumber(3) % return multiple values
% --------- search path ---------------
addpath('C:\Users\69176\Desktop')  % functions will be searched here
% --------- J(theta) ---------------
X = [1 1 ;1 2;1 3] % every raw is a sample; every column is a feature
y = [1;2;3]
theta = [0;1]
J = costFunctionJ(X,y,theta)
theta = [0;0]
J = costFunctionJ(X,y,theta)

% computing data
clc % clean the current terminal
% --------hypothesis----------
prediction = theta' * x; % do this
predictions = X * theta
% -------- gradient descent ----------
% update theta
x=(alpha*(1/m))*(X'*((X*theta)-y));
theta=theta-x;
% -------- cost function J(theta)-----
x=X*theta-y;
J=(x'*x)/(2*m);



```