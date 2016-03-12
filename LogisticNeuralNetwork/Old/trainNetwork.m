#Takes an initial neural network, a properly sized matrix of training examples (where each column is a 
#single example), and a corresponding matrix of target outputs (where each column is a single example)
#Returns a new neural network, whose parameters are trained to the examples and target outputs and
#whose other fields are the same as the given network
function netF = trainNetwork(net, x, y)
    formattedCost = @(p) formattedCost(p, net.layers, x, y, net.regParameter);
    #options = optimset('MaxIter', 50);
    initialParams = parametersToColumn(net.parameters);
    [params, cost] = fminunc(formattedCost, initialParams);
    cost
    netF = net;
    netF.parameters = columnToParameters(params, net.layers);
end