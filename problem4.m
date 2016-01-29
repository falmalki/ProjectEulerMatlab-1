% problem4.m
clear, clc
disp('Find the largest palindrome made from the product of two 3-digit numbers.')

tic

palindrome = 0;

for a = 999 : -1 : 100
    for b = a : -1 : 100
        c = a*b;
        
        if c > palindrome % gradually eliminate smaller palindromes
            productStr = num2str(c);
            productStrFlip = fliplr(productStr); % creates flipped to string for comparison
            
            if strcmp(productStr, productStrFlip)
                palindrome = c;
            end
        end
    end
end

palindrome %#ok<NOPTS>

toc