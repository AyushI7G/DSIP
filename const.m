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