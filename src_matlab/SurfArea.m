function A = SurfArea(TetraEle_Node, NodeCor, NodeInfo)

ENode = TetraEle_Node;
ENode(NodeInfo == 0) = []

Amat = NodeCor(ENode,2:4);

x = Amat(:,1)';
y = Amat(:,2)';
z = Amat(:,3)';
ons = [1 1 1];
A = 0.5*sqrt(det([x;y;ons])^2 + det([y;z;ons])^2 + det([z;x;ons])^2);
