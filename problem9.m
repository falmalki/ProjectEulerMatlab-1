% problem9.m

clear, clc
disp('There exists exactly one Pythagorean triplet for which a + b + c = 1000. Find the product abc.')
tic

product = 0;

for a = 1:1000
    for b = 1:1000
        
        c = sqrt(a^2 + b^2);
        
        if a + b + c == 1000
            product = a * b * c;
            break;
        end
    end
end

product %#ok<NOPTS>

toc