function [Error] = ridge_regression_cost_function(Theta, Y, FeatureMatrix, lambda)

  [n, m] = size(FeatureMatrix)
  %aplicam formula pentru J:
  J=0;
  for i = 1:n
      J = J + (FeatureMatrix(i, 1:m) * Theta(2:m+1,1) - Y(i,1))^2;
  end
  %adaugam lambda la eroare:
  Error = J / (2 * n) + lambda * Theta' * Theta;
end
