#A *layer scheme* is a column vector of positive integers

#Given a layer scheme a[1],...,a[k], a *sequence of parameters* is a k-length array
#of matrices, where:
#   1. The first matrix in the array (parameters[1]) is the empty matrix
#   2. The ith matrix in the array (for 2 <= i <= k) is an a[i]x(a[i-1]+1) matrix of real numbers

#initializeParameters(layers, variance) takes a layer scheme and a real number
#and returns a sequence of parameters of the proper sizes, with values initialized to
#real values following a normal distribution with mean 0 and the given variance
function p = initializeParameters(layers, variance)
  numLayers = size(layers);
  p = cell(numLayers, 1);
  for i = 2:numLayers,
    p{i} = randn(layers(i), layers(i-1) + 1)*variance;
  end
end