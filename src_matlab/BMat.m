function [V B] = BMat(nodecor)

% Calculate the shape function gradient of the Tetrahedral. See page 71.

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

B = [b; c; d]/V/6;
