function [V Y] = BMat(nodecor)

% Calculate the shape function gradient of the Tetrahedral

b = zeros(1,4);
c = zeros(1,4);
d = zeros(1,4);

Vmat = [ones(4,1) nodecor];
V = det(Vmat)/6;

for k = 1:4
    b(k) = cofactor(k,2,Vmat);
    c(k) = cofactor(k,3,Vmat);
    d(k) = cofactor(k,4,Vmat);
end;

Y = [b; c; d]/V/6;
