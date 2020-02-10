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

