#Takes a matrix of inputs, a matrix of expected outputs, and network parameters
#Evaluates each example in the inputs and gets the predicted class from the network
#Then, compares the predicted class to the actual expected class
#Returns the percent of classes that were incorrect
function j = percentError(x, y, params)
  predictions = makePredictions(x, params);
  [dummy, indices] = max(y, [], 2);
  numErrors = size(indices(indices != predictions), 1);
  j = numErrors / size(x, 1);
end