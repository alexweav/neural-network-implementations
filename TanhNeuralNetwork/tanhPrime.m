#The derivative of the hyperbolic tangent function, applied elementwise to a given matrix or value
function y = tanhPrime(x)
  y = 1 .- (tanh(x).^2);
end