x = csvread("x.csv");
h = csvread("h.csv");

nx = x(:,1);
x = x(:,2);

nh = h(:,1);
h = h(:,2);

[ny, y] = convolution(x, nx, h, nh);

figure;
subplot(3,1,1);
stem(nx,x);
subplot(3,1,2);
stem(nh, h);
subplot(3,1,3);
stem(ny, y);

