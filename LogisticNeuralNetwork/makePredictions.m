function y = makePredictions(x, params)
  result = evaluateNetwork(x, params);
  [maxVals, y] = max(result, [], 2);
  y(y == 10) = 0;
end