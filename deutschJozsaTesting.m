
n = 4;

f = @(x) 0;
deutschJozsa(n, f)

f = @(x) 1;
deutschJozsa(n, f)

f = @(x) mod(sum(x), 2);
deutschJozsa(n, f)

f = @(x) mod(sum(x)+1, 2);
deutschJozsa(n, f)
