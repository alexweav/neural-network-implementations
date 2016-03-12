function [net, J, iterations] = trainNetwork(net, x, y, batchsize, x_val, y_val)
  m = size(x, 1);
  params = net.parameters;
  eta = net.learningRate;
  lambda = net.regParameter;
  #assume x is divisible by batchsize
  numBatches = x / batchsize;
  iterations = [0];
  J = [costFunction(evaluateNetwork(x_val, params), y_val, params, lambda)];
  for i = batchsize:batchsize:m
    xBatch = x((i-batchsize)+1:i, :);
    yBatch = y((i-batchsize)+1:i, :);
    params = nnGradientDescent(xBatch, yBatch, params, eta, lambda);
    J = [J;costFunction(evaluateNetwork(x_val, params), y_val, params, lambda)];
    iterations = [iterations;i];
  end
  net.parameters = params;
end