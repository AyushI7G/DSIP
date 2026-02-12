r1 = input('Enter r1: ');
r2 = input('Enter r2: ');

for i = 1:128
    for j = 1:128
        r = A(i,j);
        if r <= r1
            E(i,j) = r;
        else if r <=r2 
            E(i,j) = 255;
        else
            E(i,j) = r;     
        end
        end
    end
end

imshow(E)