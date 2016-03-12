#Define sigmoid(x) to be 1/(1+e^-x)
#The sigmoid of any vector or matrix is the element-wise sigmoid of the container's elements
function y = sigmoid(x)
  y = 1./(1.+exp(-x));
end