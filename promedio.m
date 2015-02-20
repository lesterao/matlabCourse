function y = promedio(x)
% PROMEDIO Calcula la media de los elementos de un vector
% PROMEDIO(X), donde X es el vector, es la media de los elementos del vector
% Si la entrada no es un vector, se produce un error.
[m,n] = size(x);
if ((m == 1) & (n == 1))
error('Input must be a vector')
end
y = sum(x)/length(x); % Cálculo del promedio