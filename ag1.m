
clc;
clear;
close all;

x = -5:0.1:5;

figure;

% 1) y = x^2
subplot(3,3,1);
y1 = x .* x;
plot(x,y1);
title('y = x^2'); grid on;

% 2) y = x^3
subplot(3,3,2);
y2 = x .* x .* x;
plot(x,y2);
title('y = x^3'); grid on;

% 3) y = 2x + 1
subplot(3,3,3);
y3 = 2.*x + 1;
plot(x,y3);
title('y = 2x+1'); grid on;

% 4) y = |x| (manual absolute)
subplot(3,3,4);
y4 = x;
y4(x<0) = -x(x<0);
plot(x,y4);
title('y = |x|'); grid on;

% 5) y = x^4
subplot(3,3,5);
y5 = x.*x.*x.*x;
plot(x,y5);
title('y = x^4'); grid on;

% 6) y = 1/(1+x^2)
subplot(3,3,6);
y6 = 1 ./ (1 + x.*x);
plot(x,y6);
title('y = 1/(1+x^2)'); grid on;

% 7) y = x - x^3/3 (approx sin(x) without sin)
subplot(3,3,7);
y7 = x - (x.*x.*x)/6;
plot(x,y7);
title('sin approx'); grid on;

% 8) y = 1 + x + x^2/2 (approx e^x without exp)
subplot(3,3,8);
y8 = 1 + x + (x.*x)/2;
plot(x,y8);
title('exp approx'); grid on;

% 9) y = x/(1+|x|) (manual abs again)
subplot(3,3,9);
temp = x;
temp(x<0) = -x(x<0);
y9 = x ./ (1 + temp);
plot(x,y9);
title('custom'); grid on;
