#The derivative of the sigmoid(x) function
#Works element-wise across matrices, as sigmoid(x) does
function y = sigmoidPrime(x)
  y = sigmoid(x).*(1.-sigmoid(x));
end