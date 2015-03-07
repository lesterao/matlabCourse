aprsin = @(x) x - x.^3/6;
x = linspace(-pi,pi,100);
plot(x,aprsin(x),x,sin(x));
