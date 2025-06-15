function [Theta] = gradient_descent(FeatureMatrix, Y, m, n, alpha, iter)
    Theta = zeros(m+1, 1);
    Delta_J = zeros(m+1, 1);
    %aplicam gradient descent cum este descris in enunt
    for i = 1:iter
        for j = 1:m
            sum = 0;
            for k = 1:n
                sum = sum + (FeatureMatrix(k, 1:m) * Theta(2:m+1,1) - Y(k,1)) * FeatureMatrix(k, j);
            end
            sum = sum / n;
            Delta_J(j+1, 1) = sum
        end
        Theta = Theta - alpha * Delta_J;
    end
end
