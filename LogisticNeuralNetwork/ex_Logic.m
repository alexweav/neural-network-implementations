x = [0 0;0 1;1 0;1 1];
y = [0;0;0;1];
layers = [2;5;1];
net = createNetwork(layers, 1, 0);
params = net.parameters;
iterations = [];
Jtrain = [];
for i = 1:1000,
  iterations = [iterations;i];
  Jtrain = [Jtrain;costFunction(evaluateNetwork(x, params), y, params, net.regParameter)];
  params = nnGradientDescent(x, y, params, net.learningRate, net.regParameter);
  plot(iterations, Jtrain);
end