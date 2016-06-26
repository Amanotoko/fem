function fqN = qN_2d(Node_Num,LineEle,NodeCor,flux_line,q, h)

%Calculte the power vector

fqN = sparse(Node_Num,1);

Line = find(LineEle(:,4) == flux_line);
LhN = length(Line);

for n = 1:LhN
    Node = LineEle(Line(n), 6:7);
    % calculate the surf area, length*height(h)
    Lmat = NodeCor(Node, 2:4);
    x = Lmat(1,1) - Lmat(2,1);
    y = Lmat(1,2) - Lmat(2,2);
    z = Lmat(1,3) - Lmat(2,3);
    A = sqrt(x^2+y^2+z^2);
    
    %calculate fqN
    fqN(Node) = fqN(Node) + q*A*ones(2,1)/2;
end
