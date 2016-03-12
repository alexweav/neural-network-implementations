function j = percentError(x, y, params)
  predictions = makePredictions(x, params);
  [dummy, indices] = max(y, [], 2);
  indices(indices == 10) = 0;
  numErrors = size(indices(indices != predictions), 1);
  j = numErrors / size(x, 1);
end