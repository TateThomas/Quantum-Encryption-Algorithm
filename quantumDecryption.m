function [message] = quantumDecryption(qState, key)

    D = @(x) innerProduct(x, key);

    m = size(qState, 1);

    % initialize states
    x = qState;
    X = qState;
    y = hadamard([0; 1]);

    % quantum oracle
    for i = 1:m
        y0 = XOR(y{1, 1}, D(x{i, 1}));
        if y0 == 1
            x{i, 2} = -1 * x{i, 2};
        end
        X{i, 2} = 0;
    end

    % last hadamard
    for i = 1:m
        HTransform = HTensorN(x{i, 1});
        for j = 1:m
            X{j, 2} = X{j, 2} + (HTransform{j, 2} * x{i, 2});
        end
    end

    message = measure(X);

end