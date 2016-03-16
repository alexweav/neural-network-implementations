#This assumes that the script to load MNIST data has already been run
#Load script at ../Data/MNIST/loadMNIST.m
#It will load the formatted MNIST data into the workspace automatically
#No further cleaning is needed.

#This script trains a logistic neural network with the MNIST dataset

######HYPERPARAMETERS#####
eta = 0.09;
lambda = 0.04;
hiddenLayerSize = 800;
batchsize = 400;
epochs = 6;
#current best: eta = 0.09, lambda = 0.04, hiddenLayerSize = 700, batchsize = 400, 50k examples, 6 epochs
#validation percent error = 6.29%
##########################

layers = [28*28;hiddenLayerSize;10];
net = createNetwork(layers, eta, lambda);
iterations = [];
maxIter = 0;
Jval = [];
for i = 1:epochs,
  [net, J, it] = trainNetwork(net, x_1, y_1, batchsize, x_val, y_val);
  iterations = [iterations;it.+maxIter];
  maxIter = iterations(end);
  Jval = [Jval;J];
  [net, J, it] = trainNetwork(net, x_2, y_2, batchsize, x_val, y_val);
  iterations = [iterations;it.+maxIter];
  maxIter = iterations(end);
  Jval = [Jval;J];
  [net, J, it] = trainNetwork(net, x_3, y_3, batchsize, x_val, y_val);
  iterations = [iterations;it.+maxIter];
  maxIter = iterations(end);
  Jval = [Jval;J];
  [net, J, it] = trainNetwork(net, x_4, y_4, batchsize, x_val, y_val);
  iterations = [iterations;it.+maxIter];
  maxIter = iterations(end);
  Jval = [Jval;J];
  [net, J, it] = trainNetwork(net, x_5, y_5, batchsize, x_val, y_val);
  iterations = [iterations;it.+maxIter];
  maxIter = iterations(end);
  Jval = [Jval;J];
end

plot(iterations, Jval);
percentError(x_val, y_val, net.parameters)