function [Theta] = normal_equation(FeatureMatrix, Y, tol, iter)
  [n, m] = size(FeatureMatrix);
  b = FeatureMatrix' * Y;
  A = FeatureMatrix' * FeatureMatrix;
  r0 = b;
  v = r0;
  Theta = zeros(m+1, 1);
  tolsq = tol ^ 2;
  k = 1;
  %aplicam gradientul conjugat:
  while k <= iter && r0' * r0 > tolsq
    t = (r0' * r0) / (v' * A * v);
    Theta(2:m+1,1) = Theta(2:m+1,1) + t * v;
    r = r0 - t * A * v;
    s = (r' * r) / (r0' * r0);
    v = r + s * v;
    k = k+1;
    r0 = r;
  end
end
