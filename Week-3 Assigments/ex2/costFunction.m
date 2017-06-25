function [J, grad] = costFunction(theta, X, y)
%COSTFUNCTION Compute cost and gradient for logistic regression
%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost
%   w.r.t. to the parameters.

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
%
% Note: grad should have the same dimensions as theta
%

% 
% X = [ones(m, 1), data(:,1)]; % Add a column of ones to x
% theta = zeros(2, 1); % initialize fitting parameters

h = X*theta;

%J= (1/(2*m)) * sum((h-y).^2);
J= (1/(m)) * sum((-y'*log(sigmoid(h))-(1-y)'*log(1-sigmoid(h))));

 %delta= (1/m)* X' * (X * theta - y); 
 %  theta= theta - (alpha*delta);
 
grad= (1/m)* X' * (sigmoid(X * theta) - y); 







% =============================================================

end