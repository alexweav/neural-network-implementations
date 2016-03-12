#This performs the tasks of both costFunction() and backprop() and returns both their values in a pair [J colGrad]
#As a requirement, the given parameters must be given as a concatenated row-major order column, see parametersToColumn()
#The second output, grad, is given as a concatenated row-major order column, 
#and may be converted to the normal format via columnToParameters()
function [J, colGrad] = formattedCost(colParams, layers, x, y, lambda)
  params = columnToParameters(colParams, layers);
  m = size(x, 1);
  numLayers = size(params, 1);
  z = cell(numLayers, 1);
  a = cell(numLayers, 1);
  delta = cell(numLayers, 1);
  grad = cell(numLayers, 1);
  a{1} = x;
  for i = 2:numLayers,
    z{i} = (params{i}*[ones(1, m);a{i-1}'])';
    a{i} = sigmoid(z{i});
  end
  
  J = costFunction(a{numLayers}, y, params, lambda);
  
  delta{numLayers} = a{numLayers} - y;
  for i = numLayers:-1:2,
    if i != numLayers,
      delta{i} = ((params{i+1}(:, 2:end)' * delta{i+1}').*sigmoidPrime(z{i}'))';
    end
    grad{i} = (1/m).*(delta{i}' * [ones(m, 1) a{i-1}]);
    grad{i}(:, 2:end) = grad{i}(:, 2:end) + (lambda/m).*params{i}(:, 2:end);
  end
  colGrad = parametersToColumn(grad);
end