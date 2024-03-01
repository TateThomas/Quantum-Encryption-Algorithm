function [result] = deutschJozsa(n, f)

    % initialize states
    x = HTensorN(zeros(n, 1));
    y = hadamard([0; 1]);
    X = x;

    % quantum oracle
    for i = 1:2^n
        y0 = XOR(y{1, 1}, f(x{i, 1}));
        if y0 == 1
            x{i, 2} = -1 * x{i, 2};
        end
        X{i, 2} = 0;    % set up output cells
    end

    % last hadamard
    for i = 1:2^n
        HTransform = HTensorN(x{i, 1});
        for j = 1:2^n
            X{j, 2} = X{j, 2} + (HTransform{j, 2} * x{i, 2});
        end
    end

    result = measure(X);

end