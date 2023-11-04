% Define the range for our impulse response h1(n) and h2(n)
n = (0:10);

% Define the impulse response h1(n)
h1 = n .* 0.5 .^ n .* sin(pi / 6 .* n);

% plot for impulse response h1(n):
stem(n, h1);
title("Plot for impulse response h1(n)");
xlabel("n");
ylabel("h1(n)")

% Iniatialize the input sequence
x = zeros(1, 11);
x(1) = 1;

% Determine the transfer function H(z) and write it in the form
% N(z^-1)/D(z^-1), here N and Z are polynomials in terms of negative power
% of z
N = [0 4 0 -1];
D = [16 -16*sqrt(3) 20 -4*sqrt(3) 1];

% Find the impulse response of H(z) using the "filter" function
h2 = filter(N, D, x);

% plot for impulse response h2(n):
stem(n, h2);
title("Plot for impulse response h2(n)");
xlabel("n");
ylabel("h2(n)")

% Plot h1(n) and h2(n) on the same figure
stem(n, h1, "r-");
hold on
stem(n, h2, "b*");
title("Plot for h1(n) and h2(n)");
xlabel("n");
ylabel("h1(n) and h2(n)")
legend({"h1(n)", "h2(n)"});