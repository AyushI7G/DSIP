x = [1 2 0.5 1];
h = [1 2 1 -1];

h_fold = fliplr(h);
h_shift = circshift(h_fold,-1);

figure;

subplot(3,3,1);
stem(h_fold);
title('h[k]');

subplot(3,3,2);
stem(h_shift);
title('h[-k] n = -1');

subplot(3,3,3);
stem(x.*h_shift(1:length(x)));
title('Multiplication');

