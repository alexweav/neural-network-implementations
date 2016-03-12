function dispImage(x, index)
  imagesc(reshape(x(index, :), 28, 28)'), colormap gray;
end