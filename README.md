1. `parse_data_set_file.m`: citim dimensiunile setului de date si citim linie cu linie tabelul separand coloanele, ne asiguram ca se
respecta tipul de date in fiecare din matrici 
2. `prepare_for_regression.m`: transformam datele in valori numerice si adaugam dimensiunile necesare pentru fiecare caz
3. `linear_regression_cost_function.m`: facem intr-un for calculele pentru J parcurgand FeatureMatrix linie cu linie 
4. `parse_csv_file.m`: citim la fel ca la txt file dar folosim virgula ca separator la linii
5. `gradient_descent.m`: aplicam algoritmul gradient descent
6. `normal_equation.m`: aplicam gradientul conjugat
7. `lasso_regression_cost_function.m si ridge_regression_cost_function`: la ambele modificam functia de cost corespunzator
