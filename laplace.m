syms a t;
y = exp(-a*t)*heaviside(t);
ezplot(y)
Y = laplace(y)