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
