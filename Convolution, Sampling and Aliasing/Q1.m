% initialize the input vector k for function x[k] and h[k]
k = (0:4);

% generate two functions x[k] and h[k] using the input vector k
x = k;
h = zeros(1,4) + 2 - k(1:4);

% plot for function x[k]
subplot(2,1,1);
stem(k, x);
xlabel("k");
ylabel("x[k]");
title("Plot for x[k]");

% plot for function h[k]
subplot(2,1,2);
stem(k(1:4), h);
xlabel("k");
ylabel("h[k]");
title("Plot for h[k]");

% convolution of functions x[k] and h[k]
xh = conv(h,x);

% plot for convolution output
subplot(1,1,1);
stem(xh);
title("Plot for convolution output");
xlabel("k");
ylabel("x[k] * h[k]");