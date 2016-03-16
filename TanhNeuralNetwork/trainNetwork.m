#Takes a neural network and a set of labeled training data, x and y
#Takes an integer, batchsize, which divides the number of examples in the training data
#Takes a set of labeled validation, x_val and y_val
#Performs one iteration of batch, mini-batch, or stochastic gradient descent on the data (depending on the batch size)
#Returns the trained network
#Returns J and iterations, two column vectors.  Iterations contains a sequence of sample steps and J contains cost values at each sample
#To plot the cost of the network during training, use plot(iterations, J) after executing trainNetwork
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