% problem3.m
clear, clc

largeNum = 600851475143;
fprintf('What is the largest prime factor of the number %i?\n', largeNum)

tic

% max(factor(largeNum)) % easy way

primeFactor = 0;
divisor = 5; % first (non 2) prime

while largeNum ~= 1
    while mod(largeNum, divisor) ~= 0
        divisor = divisor + 2;
    end
    
    primeFactor = divisor; % divisor found in previous loop becomes current highest prime factor
    largeNum = largeNum/primeFactor; % will eventually = 1 and break the loop
    
    divisor = divisor + 2;
end

primeFactor %#ok<NOPTS>

toc