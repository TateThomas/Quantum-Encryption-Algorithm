function [bit] = measure(x)

    n = size(x, 1);
    randValue = rand;
    i = 1;

    while (randValue > 0) && (i <= n)
        randValue = randValue - (x{i, 2} * conj(x{i, 2}));
        i = i + 1;
    end

    bit = x{i-1, 1};

end