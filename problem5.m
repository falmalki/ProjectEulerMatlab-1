% problem5.m
clear, clc
disp('What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?')

tic

UPPER = 20;
factors = 1 : UPPER;
result = 1;

for i = factors
    if factors(i) > 1 
        result = result * factors(i);
    end
    for j = (2*i) : i : UPPER
        factors(j) = factors(j) / factors(i);
    end
end

result  %#ok<NOPTS>

toc