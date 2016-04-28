function [d, dx, dy, dz] = CalD(p1, p2)

%Calculate the distance between nodes
dx = p1(1) - p2(1);
dy = p1(2) - p2(2);
dz = p1(3) - p2(3);
d = sqrt(dx^2 + dy^2 + dz^2);
