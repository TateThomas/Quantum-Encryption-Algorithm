function [ciphertext] = quantumEncryption(plaintext, key)

    E = @(x) innerProduct(x, XOR(plaintext, key));

    % initialize states
    n = length(plaintext);
    ciphertext = HTensorN(zeros(n, 1));
    y = hadamard([0; 1]);

    % quantum oracle
    for i = 1:2^n
        y0 = XOR(y{1, 1}, E(ciphertext{i, 1}));
        if y0 == 1
            ciphertext{i, 2} = -1 * ciphertext{i, 2};
        end
    end

end