% initialize the input vector for k1 and k2
k1 = (-10:40);
k2 = (0:100);

% output vector x1[k] and x2[k] with input k1 and k2 respectively
x1 = -5.1*sin(0.1*pi*k1 - 3*pi/4) + 1.1*cos(0.4*pi*k1);
x2 = (-0.9).^(k2) .* exp(1j * pi * k2 / 10);

realX2 = real(x2);  % real part of x2[k]
imagX2 = imag(x2);  % imaginary part of x2[k]


% plot for x1[k]
subplot(3,1,1);
stem(k1, x1);
xlabel("k");
ylabel("x1[k]");
title("Plot for x1[k]");


% plot for real part of x2[k]
subplot(3,1,2);
stem(k2, realX2);
xlabel("k");
ylabel("Re(x2[k])");
title("Plot for the real part of x2[k]");


% plot for imaginary part of x2[k]
subplot(3,1,3);
stem(k2, imagX2);
xlabel("k");
ylabel("Img(x2[k])");
title("Plot for the imaginary part of x2[k]");


E1 = sum(abs(x1.^2)); % x1[k] energy
E2 = sum(abs(x2.^2)); % x2[k] energy

% print Total Energy for x1[k]
fprintf('%s %.2f \n', "Total Energy of x1[k] is equal to", E1);
% print Total Energy for x2[k]
fprintf('%s %.2f \n', "Total Energy of x2[k] is equal to", E2);