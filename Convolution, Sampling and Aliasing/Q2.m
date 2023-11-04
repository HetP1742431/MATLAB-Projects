% initialize the input vector k for function h[k]
k = (0:1:50);

% generate the impulse function h[k] using the input vector k
% Here I used the "sinc" function from the MATLAB's Math Toolbox
h = (0.3 .* sinc(0.3 .* (k - 25))) .* (0.54 - 0.46 .* cos(2 .* pi .* k ./ 50 ));

% plot for the impulse response h[k]
stem(k, h);
title("Plot for the impulse response h[k]");
xlabel("k");
ylabel("h[k]");

% Read the audio signal and store it into matrix x3. Fs is the sample rate,
% which is necessary to write the audio signal into .wav file after proce-
% ssing.
[x3, Fs] = audioread("baila.wav");

% convolution of functions x3[k] and h[k]
x3h = conv(h,x3);

% store the convolution output in "baila_filtered.wav" file
audiowrite("baila_filtered.wav", x3h, Fs);