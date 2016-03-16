#The hyperbolic tangent function, applied elementwise to a given matrix or value
function y = tanh(x)
  y = 2./(1.+e.^(-2.*x)) .- 1;
end