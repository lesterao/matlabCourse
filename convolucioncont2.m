syms t;
x = t;
h = 5*sin(t);
figure,ezplot(x,[0 10 0 2],1)
figure,ezplot(h,[0 10 0 2],2)
X = laplace(x);
H = laplace(h);
Y = X*H
y = ilaplace(Y);
figure,ezplot(y,[0 10 0 2],3)
