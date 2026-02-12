% Original Image
A = imread("cosmos.bmp");

% Negative Image
for i = 1 : 128
    for j = 1 : 128
        B(i, j) = 255 - A(i, j);
    end
end

imwrite(B,'imneg.bmp')

% Threshold Image
th = input('Enter threshold: ');

for i = 1:128
    for j = 1:128
        r = A(i,j);
        if 0 <= r && r <= th
            C(i,j) = 255;
        else
            C(i,j) = 0;
        end
    end
end

imwrite(C,'imthr.bmp')

% GLS without Backg
r1 = input('Enter r1: ');
r2 = input('Enter r2: ');

for i = 1:128
    for j = 1:128
        r = A(i,j);
        if r <= r1 
            D(i,j) = 0;
        else if r <= r2
            D(i,j) = 255;
        else
            D(i,j) = 0;     
        end
        end
    end
end

%GLS with Backg
s1 = input('Enter s1: ');
s2 = input('Enter s2: ');

for i = 1:128
    for j = 1:128
        r = A(i,j);
        if r >= r2
            E(i,j) = 255; 
        else
            E(i,j) = D(i,j); 
        end
    end
end

% Contrast Stretching
r1 = input('Enter r1: ');
r2 = input('Enter r2: ');
s1 = input('Enter s1: ');
s2 = input('Enter s2: ');

a = s1/s2;
b = (s2-s1)/(r2-r1);
g = (255-s2)/(255-r2);

for i = 1:128
    for j = 1:128
        r = A(i,j);
        if r <= r1
            F(i,j) = r*a;
        else if r <= r2
            F(i,j) = s1 + b * (r - r1);
        else
            F(i,j) = s2 + g * (r - r2);
        end
        end
    end
end

imshow(F)  


subplot(2,3,1)
imshow(A)
title('Original')

subplot(2,3,2)
imshow(B)
title('Negative')

subplot(2,3,3)
imshow(C)
title('Threshold')

subplot(2,3,4)
imshow(D)
title('GLS without Bckgd') 

subplot(2,3,5)
imshow(E)
title('GLS with Bckgd')

subplot(2,3,6)
imshow(F)
title('Contrast Stretching')