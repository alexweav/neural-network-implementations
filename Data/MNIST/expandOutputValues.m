#Takes a column vector of positive integers x[1],...,x[n]
#Returns a matrix where the the x[i]th element of the ith row is 1 for each row
#All other elements are 0
#Example:
#                   [0 0 0 1]
#     [4;2;3]  ->   [0 1 0 0]
#                   [0 0 1 0]
function y = expandOutputValues(x, numLabels)
  y = eye(numLabels)(x, :);
end