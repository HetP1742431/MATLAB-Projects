% Read the audio signal and store it into matrix x3. Fs is the sample rate,
% which is necessary to write the audio signal into .wav file after proce-
% ssing.
[x3, Fs] = audioread("baila.wav");

% Calculate the intervals for the values on x-axis
k = (1:length(x3))/Fs;

% Plot the audio signal x3s
stem(k, x3);
title("Plot for audio signal x3[t]");
xlabel("time (s)");
ylabel("x3[t]");

% Generate matrix x3s[k] by keeping the first half of x3
x3s = x3(1:(length(x3)/2)); 

% Write x3s[k] into an output audio file.
audiowrite("baila_half.wav", x3s, Fs);