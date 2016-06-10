function [KK ff] = boundary_2d(LineEle, K, f, line, val)

KK = K;
ff = f;

Lines = find(LineEle(:,4) == line);
LhN = length(Lines);

ll = [];
for n = 1:LhN
    ll = [ll LineEle(Lines(n), 6:7)];
end

ll = unique(ll);

k = length(ll);
for n = 1:k
    node = ll(n);
    KK(node, :) = 0;
    KK(node, node) = 1;
    ff(node) = val;
end