function y = softmax(x, dim)
  y = exp(x)./sum(exp(x), dim);
end