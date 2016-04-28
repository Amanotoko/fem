function fqN = qN(Node_Num, TetraEleNode,TriEleNode,NodeCor,flux_surf,q)

%Calculte the power vector

fqN = sparse(Node_Num,1);

[flag NodeInfo] = EleWithSurf(TetraEleNode,TriEleNode,flux_surf); % find the node and element associate with convection surface
LqN = length(flag);

for n = 1:LqN,
    Node = TetraEleNode(flag(n),:);
    A = SurfArea(Node,NodeCor,NodeInfo(n,:));
    fqN(Node) = fqN(Node) +q*tetra_intN('A',A,NodeInfo(n,:));
end