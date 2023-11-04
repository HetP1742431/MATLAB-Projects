% Part (a)
% define the range for the signals
n1 = (0:30);
% define sampling frequency
fs1 = 100;

% define the resulting digital signal
y1 = cos(20 .* pi .* n1 ./ fs1);
y2 = cos(180 .* pi .* n1 ./ fs1);

% plot for signal y1[n]
subplot(2,1,1);
stem(n1, y1);
xlabel("n");
ylabel("y1[n]");
title("Plot for y1[n]");

% plot for signal y2[n]
subplot(2,1,2);
stem(n1, y2);
xlabel("n");
ylabel("y2[n]");
title("Plot for y2[n]");


% Part (b)
% define the range for the signals
n2 = (0:300);
% define sampling frequency
fs2 = 1000;

% define the resulting digital signal
z1 = cos(20 .* pi .* n2 ./ fs2);
z2 = cos(180 .* pi .* n2 ./ fs2);

% plot for signal z1[n]
subplot(2,1,1);
stem(n2,z1);
xlabel("n");
ylabel("z1[n]");
title("Plot for z1[n]");

% plot for signal z2[n]
subplot(2,1,2);
stem(n2,z2);
xlabel("n");
ylabel("z2[n]");
title("Plot for z2[n]");


% Using the code given in the manual
% n1 is the time index for y1 and y2 (0≤n1≤30), n2 is the time index for z1 and z2(0≤n2≤300)
subplot(2,1,1);
plot(n2/fs2,z1,'r-', n1/fs1,y1,'b+');
xlabel('n'); ylabel('y_1[n] and z_1[n]');
legend('z_1[n]’,’y_1[n]');
subplot(2,1,2);
plot(n2/fs2,z2,'r-', n1/fs1,y2,'b+');
xlabel('n'); ylabel('y_2[n] and z_2[n]');
legend('z_2[n]','y_2[n]');


% Part (c)
% define the range for the signals
n1 = (0:30);
% define sampling frequency
fs1 = 100;


% Here, x3[t] is defined with different analog frequency that will give the 
% same digital signal as y1[n] after sampling with sampling frquency of 100Hz
% Here, analog frequency of 220*pi is chosen to produce the same digital
% signal as y1[n] after sampling with sampling frquency of 100Hz

% define the resulting digital signal
y1 = cos(20 .* pi .* n1 ./ fs1);
y3 = cos(220 .* pi .* n1 ./ fs1);

% plot for signal y1[n]
subplot(2,1,1);
stem(n1, y1);
xlabel("n");
ylabel("y1[n]");
title("Plot for y1[n]");

% plot for signal y3[n]
subplot(2,1,2);
stem(n1, y3);
xlabel("n");
ylabel("y3[n]");
title("Plot for y3[n]");