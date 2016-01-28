% problem1.m
clear, clc
tic

disp('Find the sum of all the multiples of 3 or 5 below 1000.')

multiples = [];
l =

for i = 1:999
    if mod(i, 3) == 0 || mod(i, 5) == 0
        multiples = [multiples, i]; %#ok<AGROW>
    end
end

sum(multiples)
toc