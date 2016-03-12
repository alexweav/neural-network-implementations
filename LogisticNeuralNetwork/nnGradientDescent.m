function params = nnGradientDescent(x, y, initialParams, learningRate, lambda)
  numLayers = size(initialParams, 1);
  params = initialParams;
  grad = backprop(x, y,  params, lambda, :);
  for j = 2:numLayers,
    params{j} = params{j}.-learningRate.*grad{j};
  end
end