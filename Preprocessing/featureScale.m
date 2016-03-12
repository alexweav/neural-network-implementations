function y = featureScale(x, min = min(min(x)), max = max(max(x)))
  y = (x.-min)./(max-min);
end