% Define the transfer function H1(z)
b1 = [2 2];
a1 = [1 -1.25];
% Find zero-pole points for LTI system
[z1, p1, k1] = tf2zpk(b1, a1);

% Define the transfer function H2(z)
b2 = [2 2];
a2 = [1 -0.8];
% Find zero-pole points for LTI system
[z2, p2, k2] = tf2zpk(b2, a2);

% Draw pole-zero diagram for H1(z)
zplane(z1, p1);
title("pole-zero diagram for H1(z)");
xlabel("Real axis");
ylabel("Imaginary axis");

% Draw pole-zero diagram for H2(z)
zplane(z2, p2);
title("pole-zero diagram for H2(z)");
xlabel("Real axis");
ylabel("Imaginary axis");

% Define the range of the frequency
w = (0:0.01:2*pi());

% Define the frequency response of both systems using z = e^(jw)
H1 = (2 + 2 .* exp(-1i .* w)) ./ (1 - 1.25 .* exp(-1i .* w));
H2 = (2 + 2 .* exp(-1i .* w)) ./ (1 - 0.8 .* exp(-1i .* w));

% Find magnitude of the frequency responses for both systems
magH1 = abs(H1);
magH2 = abs(H2);

% Find phase of the frequency responses for both systems
phaseH1 = angle(H1);
phaseH2 = angle(H2);

% Plot the magnitude and phase for the frequency response of H1(z) 
subplot(2, 1, 1);
plot(w, magH1);
title("Magnitude of the frequency response of H1(z)");
xlabel("w");
ylabel("|H1(jw)|");

subplot(2, 1, 2);
plot(w, phaseH1);
title("Phase of the frequency response of H1(z)");
xlabel("w");
ylabel("phase(H1(jw))");

% Plot the magnitude and phase for the frequency response of H2(z) 
subplot(2, 1, 1);
plot(w, magH2);
title("Magnitude of the frequency response of H2(z)");
xlabel("w");
ylabel("|H2(jw)|");

subplot(2, 1, 2);
plot(w, phaseH2);
title("Phase of the frequency response of H2(z)");
xlabel("w");
ylabel("phase(H2(jw))");

% Define the range for impulse responses h1(n) and h2(n)
n = (0:25);

% Define the impulse response functions for H1(z) and H2(z)
h1 = 3.6 .* (1.25) .^ n; % Value of h1(n) for n > 0
h1(1) = 2; % Value of h1(n) at n = 0 is 2

h2 = 4.5 .* (0.8) .^ n; % Value of h2(n) for n > 0
h2(1) = 2; % Value of h2(n) at n = 0 is 2

% Plot the impulse responses
stem(n, h1);
title("Plot for impulse response h1(n)");
xlabel("n");
ylabel("h1(n)");

stem(n, h2);
title("Plot for impulse response h2(n)");
xlabel("n");
ylabel("h2(n)");

