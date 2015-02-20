syms t;
x = heaviside(t) - heaviside(t-2);
h = heaviside(t-1) - heaviside(t-3);
figure,ezplot(x,[0 10 0 2],1)
figure,ezplot(h,[0 10 0 2],2)
X = laplace(x);
H = laplace(h);
Y = X*H;
y = ilaplace(Y)
figure,ezplot(y,[0 10 0 2],3)
