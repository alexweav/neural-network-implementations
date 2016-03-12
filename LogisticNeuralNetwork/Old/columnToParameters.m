#Takes a set of parameters given in a single column vector (see: parametersToColumn.m) and a layer scheme
#Rearranges the column vector into the normal parameter cell-array-matrix format
function p = columnToParameters(column, layers)
  numLayers = size(layers);
  p = cell(numLayers, 1);
  uIndex = 1;
  for i = 2:numLayers,
    p{i} = reshape(column(uIndex:uIndex+(layers(i)*(layers(i-1)+1))-1), layers(i), layers(i-1)+1);
    uIndex = uIndex + (layers(i)*(layers(i-1)+1));
  end
end