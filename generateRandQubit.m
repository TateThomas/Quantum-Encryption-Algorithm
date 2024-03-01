function [X] = generateRandQubit(n)

    X = cell(2^n, 2);

    randVals = zeros(2^n, 1);
    for i = 1:2^n
        randVals(i) = rand;
    end
    randVals = randVals./sum(randVals);
    
    z = zeros(n, 2^n);
    for i = 0:n-1
        A = 0:2^-i:(2^-i)*((2^n)-1);
        z(i+1, :) = mod(floor(A), 2);
    end

    for j = 1:2^n
        X{j, 1} = z(:, j);
        X{j, 2} = sqrt(randVals(j));
    end

end