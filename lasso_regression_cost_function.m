function [Error] = lasso_regression_cost_function(Theta, Y, FeatureMatrix, lambda)
  [n, m] = size(FeatureMatrix);
  %aplicam formula pentru J:
  J=0;
  for i = 1:n
      J = J + (Y(i,1) - FeatureMatrix(i, 1:m) * Theta(2:m+1))^2;
  end
  %adaugam lambda:
  Error = J / n + lambda * norm(Theta, 1);
end
