% problem2.m

clear, clc

disp('By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.')

fibb = [1, 2];
c = 0;

while max(fibb) < 4000000
    a = length(fibb) - 1;
    b = length(fibb);
    c = fibb(a) + fibb(b);
    
    if c > 4000000 
        break
    end
        
    fibb = [fibb, c]; %#ok<AGROW>
    
end

evens = fibb(mod(fibb, 2) == 0);
disp(sum(evens))
