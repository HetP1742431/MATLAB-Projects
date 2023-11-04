k = 1:50;

x = zeros(1, 50) + 1;
y1 = sysresp(x, 0.4);
%y2 = sysresp(x, 2);

%subplot(2,1,1);
stem(k, y1);
xlabel("k");
ylabel("y[k]");
title("Plot for y[k] (a = 0.4)");

%subplot(2,1,2);
%stem(k, y2);
%xlabel("k")
%ylabel("y[k]")
%title("Plot for y[k] (a = 2)")