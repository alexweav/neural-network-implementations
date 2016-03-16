#Takes a matrix of training examples, x, and a matrix of expected values, y, where the rows of x and y correspond
#Takes a set of initial parameters, a learning rate value, and a regularization value, lambda
#Performs a single iteration of gradient descent optimization, minimizing the cross entropy cost with respect to the network parameters
#Returns the updated parameters
function params = nnGradientDescent(x, y, initialParams, learningRate, lambda)
  numLayers = size(initialParams, 1);
  params = initialParams;
  grad = backprop(x, y,  params, lambda, :);
  for j = 2:numLayers,
    params{j} = params{j}.-learningRate.*grad{j};
  end
end