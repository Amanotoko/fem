function [KK ff] = boundary(Node_Num, TriEleNode, TetraEleNode, NodeCor, K, f, surf,val)


KK = K;
ff = f;

[flag NodeInfo] = EleWithSurf(TetraEleNode,TriEleNode,surf);
LhN = length(flag);

for n = 1:LhN
    Node = TetraEleNode(flag(n),4);
    KK(Node,:) = 0;
    KK(Node,Node) = 1;
    ff(Node) = val; 
end