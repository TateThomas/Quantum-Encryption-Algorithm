
syms a b
qubit = [a; b];

X = [0 1; 1 0];
Y = [0 -1i; 1i 0];
Z = [1 0; 0 -1];
H = [1 1; 1 -1]./sqrt(2);
S = [1 0; 0 1i];
T = [1 0; 0 exp((1i * pi) / 4)];
CNOT = [1 0 0 0; 0 1 0 0; 0 0 0 1; 0 0 1 0];
