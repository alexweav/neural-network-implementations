#Takes a matrix of inputs and the parameters of a network
#Evaluates the network, and converts the output into a column vector of classes
#Each element of the output vector represents the network's chosen class given the corresponding row in the input matrix
function y = makePredictions(x, params)
  result = evaluateNetwork(x, params);
  [maxVals, y] = max(result, [], 2);
end