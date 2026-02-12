A = imread("cosmos.bmp");

subplot(2,2,1)
imshow(A)
title('Original')

subplot(2,2,2)
imshow(A)
title('Negative')

subplot(2,2,3)
imshow(A)
title('Threshold')

subplot(2,2,4)
imshow(A)
title('Gray level Slicing')
    