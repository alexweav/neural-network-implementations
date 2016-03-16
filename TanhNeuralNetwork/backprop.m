#Takes X, a matrix of training examples where each row corresponds to a single example
#Takes Y, a matrix of expected values where each row of Y corresponds to each row of X, respectively
#Takes a valid set of parameters and a regularization parameter
#Returns an array of matrices of exactly the same size as the parameter set where
#the gradient of the cross-entropy cost function with respect to any parameter paramater[l][i][j]
#is stored in the corresponding location[l][i][j]
#This effectively takes the gradient of the cost with respect to every parameter of the network
function grad = backprop(x, y, params, lambda)
  m = size(x, 1);
  numLayers = size(params, 1);
  z = cell(numLayers, 1);
  a = cell(numLayers, 1);
  delta = cell(numLayers, 1);
  grad = cell(numLayers, 1);
  a{1} = x;
  for i = 2:numLayers,
    z{i} = (params{i}*[ones(1, m);a{i-1}'])';
    a{i} = tanh(z{i});
  end
  delta{numLayers} = a{numLayers} - y;
  for i = numLayers:-1:2,
    if i != numLayers,
      delta{i} = ((params{i+1}(:, 2:end)' * delta{i+1}').*tanhPrime(z{i}'))';
    end
    grad{i} = (1/m).*(delta{i}' * [ones(m, 1) a{i-1}]);
    grad{i}(:, 2:end) = grad{i}(:, 2:end) + (lambda/m).*params{i}(:, 2:end);
  end
end