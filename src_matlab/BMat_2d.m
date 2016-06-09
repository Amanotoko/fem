function [A B] = BMat_2d(nodecor, d1, d2)

% Calculate the shape function gradient of the triangular
% nodecor has 3 dimesions. d1 and d2 are used to choose 2d out of 3d.

Amat = [ones(3,1) nodecor(:,d1) nodecor(:,d2)];
A = det(Amat)/2;

b = zeros(1,3);
c = zeros(1,3);

% book pp50
b(1) = Amat(2,3) - Amat(3,3);
b(2) = Amat(3,3) - Amat(1,3);
b(3) = Amat(1,3) - Amat(2,3);

c(1) = Amat(3,2) - Amat(2,2);
c(2) = Amat(1,2) - Amat(3,2);
c(3) = Amat(2,2) - Amat(1,2);


B = [b;c]/A/2;