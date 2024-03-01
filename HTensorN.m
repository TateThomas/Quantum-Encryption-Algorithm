function [X] = HTensorN(x)

    n = length(x);
    X = cell(2^n, 2);

    z = zeros(n, 2^n);
    for i = 0:n-1
        A = 0:2^-i:(2^-i)*((2^n)-1);
        z(i+1, :) = mod(floor(A), 2);
    end

    amp = 2^(-n/2);

    for j = 1:2^n
        X{j, 1} = z(:, j);
        X{j, 2} = amp * ((-1)^(innerProduct(x, z(:, j))));
    end

end