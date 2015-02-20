x = sym('x');
syms x y z;
y = sin(x);
dy = diff(y);
inty = int(y);
ezplot(dy,[0 2*pi -1 1],1)