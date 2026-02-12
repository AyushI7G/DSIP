r1 = input('Enter r1');
r2 = input('Enter r2');

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

imshow(D)