#Takes a matrix x and the parameters of a valid network
#The rows of x correspond to individual training examples
#Each row of x must have the same length as the number of neurons of the first layer of the network
#Feeds the values through the network and obtains a result matrix a
#The rows of a correspond to the same individual training examples
#Each row of a is the output of the network given its corresponding row of x
function a = evaluateNetwork(x, params)
  m = size(x, 1);
  a = x';
  numLayers = size(params, 1);
  for i = 2:numLayers,
    a = sigmoid(params{i}*[ones(1, m);a]);
  end
  a = a';
end