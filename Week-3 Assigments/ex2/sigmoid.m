function g = sigmoid(z)
%SIGMOID Compute sigmoid function
%   g = SIGMOID(z) computes the sigmoid of z.

% You need to return the following variables correctly 
g = zeros(size(z));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the sigmoid of each value of z (z can be a matrix,
%               vector or scalar).

%data = load('ex2data1.txt');
%X = data(:, [1, 2]); y = data(:, 3);

g= 1 ./ (1+ exp(-z));

% =============================================================

end
