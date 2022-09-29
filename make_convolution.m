x = csvread("x.csv");
h = csvread("h.csv");

nx = x(:,1);
x = x(:,2);

nh = h(:,1);
h = h(:,2);

y = convolution(x, nx, h, nh);

figure; stem(y);

