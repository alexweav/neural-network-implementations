#Takes a set of parameters
#Returns the same values, concatenated into a single column vector in row-major form
#See: https://www.gnu.org/software/octave/doc/interpreter/Rearranging-Matrices.html#XREFreshape
#Reshapes each parameter matrix into a column vector and concatenates them
function c = parametersToColumn(params)
  numLayers = size(params, 1);
  c = [];
  for i = 2:numLayers,
    c = [c;reshape(params{i}, numel(params{i}), 1)];
  end
end