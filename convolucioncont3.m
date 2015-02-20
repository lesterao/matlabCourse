syms t;
x = 2*heaviside(t) - 2*heaviside(t-1)+heaviside(t-1)-heaviside(t-3)+2*heaviside(t-3)-2*heaviside(t-4);
h = heaviside(t) - heaviside(t-3);
figure,ezplot(x,[0 10 0 3],1)
figure,ezplot(h,[0 10 0 3],2)
X = laplace(x);
H = laplace(h);
Y = X*H;
y = ilaplace(Y)
figure,ezplot(y,[0 10 0 10],3)
