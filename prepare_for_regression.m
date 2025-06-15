function [FeatureMatrix] = prepare_for_regression(InitialMatrix)
    [n,m] = size(InitialMatrix);
    FeatureMatrix = zeros(n,m);
    for i = 1:n
        ncol = 0;
        for j = 1:m
            %citim darele din celule si marim numarul de coloane unde este cazul:
            ncol = ncol+1;
            if strcmp(InitialMatrix{i, j}, "yes")
                FeatureMatrix(i, ncol) = 1;
            elseif strcmp(InitialMatrix{i, j}, "no")
                FeatureMatrix(i, ncol) = 0;
            elseif strcmp(InitialMatrix{i, j}, "semi-furnished")
                FeatureMatrix(i, ncol) = 1;
                ncol = ncol + 1;
                FeatureMatrix(i, ncol) = 0;
            elseif strcmp(InitialMatrix{i, j}, "unfurnished")
                FeatureMatrix(i, ncol) = 0;
                ncol = ncol + 1;
                FeatureMatrix(i, ncol) = 1;
            elseif strcmp(InitialMatrix{i, j}, "furnished")
                FeatureMatrix(i, ncol) = 0;
                ncol = ncol + 1;
                FeatureMatrix(i, ncol) = 0;
            else
                %convertim datele in numere daca nu sunt stringuri:
                FeatureMatrix(i, ncol) = str2num(InitialMatrix{i, j}); 
            end
        end
    end
end
