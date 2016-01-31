% problem7.m
clear, clc
disp('What is the 10 001st prime number?')
tic

UPPER = 10001;

count = 1;
prime = 2;
cur = 3;

while count < UPPER
    if isprime(cur)
        prime = cur %#ok<NOPTS> show the count up because why not
        count = count + 1;
    end
    cur = cur + 2;
end

clc, prime  %#ok<NOPTS>

toc