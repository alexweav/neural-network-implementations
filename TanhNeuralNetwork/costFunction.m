#Takes a set of predictions, hTheta, obtained from the evaluation of a neural network
#Assumes the rows of hTheta correspond to output vectors of individual training examples
#Takes y, a matrix of expected values where each row corresponds to the same individual training examples
#Takes the parameters of a valid network and a regularization parameter
#Returns J, the regularized cross entropy cost of all training examples, given the current parameter state
#Our objective is to minimize this function
function J = costFunction(hTheta, y, params, lambda)
  m = size(hTheta, 1);
  J = (1/m) * sum(sum(-y.*log(hTheta) - (1.-y).*log(1.-hTheta)));
  for i = 2:size(params, 1),
    J = J + (lambda/(2*m)) * sum(sum(params{i}(:,2:end).^2));
  end
end