function [KK ff] = boundary_s(TriEle, K, f, surf, val)

KK = K;
ff = f;

Triangle = find(TriEle(:,4) == surf);
ThN = length(Triangle);

ll = [];
for n = 1:ThN
    ll = [ll TriEle(Triangle(n), 6:8)];
end

ll = unique(ll);

k = length(ll);
for n = 1:k
    node = ll(n);
    KK(node, :) = 0;
    KK(node, node) = 1;
    ff(node) = val;
end