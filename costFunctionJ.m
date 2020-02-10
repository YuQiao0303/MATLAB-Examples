% function example
function J = costFunctionJ(X,y,theta)
% x is the "design matrix"  containing our training examples
% y is the class labels
m = size(X,1); % column number of X (number of samples)
predictions = X * theta; % hypothesis
sqrErrors = (predictions - y) .^ 2 % ^2 for each element
J = 1/(2*m) * sum(sqrErrors);
