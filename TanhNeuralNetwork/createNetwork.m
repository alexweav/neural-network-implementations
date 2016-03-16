#A *neural network* is represented as a 4-tuple (L, P, eta, lambda)where:
#   1. L is a layer scheme, called the layers
#   2. P is a sequence of parameters of sizes corresponding to L, called the weights or the parameters
#   3. eta is a positive real number called the learning rate
#   4. lambda is a nonnegative real number called the regularization parameter

#createNetwork(layerSizes, lRate, regParam) takes a layer scheme, a positive real number, and
#a nonnegative real number, respectively, and returns a valid network with
#L[i] neurons in the ith layer for every i, randomly initialized parameters, and the given
#learning rate and lambda values.
function net = createNetwork(layerSizes, lRate, regParam)
  net.layers = layerSizes;
  net.parameters = initializeParameters(layerSizes, 0.12);
  net.learningRate = lRate;
  net.regParameter = regParam;
end