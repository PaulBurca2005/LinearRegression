function [Error] = linear_regression_cost_function(Theta, Y, FeatureMatrix)
  [n, m] = size(FeatureMatrix);
  %aplicam formula pentru J:
  J=0;
  for i = 1:n
      J = J + (FeatureMatrix(i, 1:m) * Theta(2:m+1, 1) - Y(i, 1))^2;
  end
  Error = J / (2 * n);
end
