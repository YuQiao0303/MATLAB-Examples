% basic operations
clc % clean the current terminal
% clear % delete all variables
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
