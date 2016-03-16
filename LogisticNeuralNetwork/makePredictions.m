function y = makePredictions(x, params)
  result = evaluateNetwork(x, params);
  [maxVals, y] = max(result, [], 2);
end