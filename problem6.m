% problem6.m
clear, clc
disp('Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.')
tic

sumOfSquares = sum((1 : 100) .^ 2);
squareOfSum = sum(1 : 100) ^ 2;

squareOfSum - sumOfSquares  %#ok<NOPTS,MNEFF>

toc