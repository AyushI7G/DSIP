clc;
clear;
close all;

% Define input signals
x = [1 2 3];
h = [1 1 1];

% Length for circular convolution
N = max(length(x), length(h));

% Zero padding
x = [x zeros(1, N-length(x))];
h = [h zeros(1, N-length(h))];

% Time index
n = 0:N-1;

% Circular convolution using cconv
y = cconv(x, h, N);

% Plot input signal x[n]
figure;
stem(n, x, 'filled');
xlabel('n');
ylabel('Amplitude');
title('Input Signal x[n]');
grid on;

% Plot impulse response h[n]
figure;
stem(n, h, 'filled');
xlabel('n');
ylabel('Amplitude');
title('Impulse Response h[n]');
grid on;

% Plot circular convolution output
figure;
stem(n, y, 'filled');
xlabel('n');
ylabel('Amplitude');
title('Circular Convolution Output y[n]');
grid on;

% Display output
disp('Circular Convolution Output:');
disp(y);
