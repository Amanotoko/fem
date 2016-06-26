function [KhNN fhTN] = hN(Node_Num, TriEleNode, TetraEleNode, NodeCor, conv_surf,h,Ta)

%Calculate the convection matrix and vector

KhNN = sparse(Node_Num,Node_Num);
fhTN = sparse(Node_Num,1);

[flag NodeInfo] = EleWithSurf(TetraEleNode,TriEleNode,conv_surf); % find the node and element associate with convection surface
LhN = length(flag);

for n = 1:LhN,
    Node = TetraEleNode(flag(n),:);
    A = SurfArea(Node,NodeCor,NodeInfo(n,:));
    
    KhNN(Node,Node) = KhNN(Node,Node)+h*intNN(A,NodeInfo(n,:));
    fhTN(Node) = fhTN(Node)+h*Ta*tetra_intN('A',A,NodeInfo(n,:)); 
end