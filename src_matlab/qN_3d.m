function fqN = qN_3d(Node_Num,TriEle,NodeCor,flux_surf,q)

%Calculte the power vector

fqN = sparse(Node_Num,1);

Triangle = find(TriEle(:,4) == flux_surf);
ThN = length(Triangle);

for n = 1:ThN
    Node = TriEle(Triangle(n), 6:8);
    % calculate the triangle area
    Amat = NodeCor(Node, 2:4);
    x = Amat(:,1)';
    y = Amat(:,2)';
    z = Amat(:,3)';
    ons = [1 1 1];
    A = 0.5*sqrt(det([x;y;ons])^2 + det([y;z;ons])^2 + det([z;x;ons])^2);
    
    %calculate fqN
    fqN(Node) = fqN(Node) + q*A*ones(3,1)/3;
end
