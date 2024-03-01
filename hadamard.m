function [X] = hadamard(qubit)

    X = cell(2, 2);
    x = ([1 1; 1 -1] * qubit )./sqrt(2);

    X{1, 1} = 0;
    X{2, 1} = 1;
    X{1, 2} = x(1);
    X{2, 2} = x(2);

end