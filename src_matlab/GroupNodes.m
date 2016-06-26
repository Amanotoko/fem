function NodeSet = GroupNodes(TetraEleNode, Node_Num)

% group physical close nodes

NodeSet = [];
pos = ones(Node_Num, 1);

[m, n] = size(TetraEleNode);
for i = 1:m
    for j = 1:n
        k = TetraEleNode(i,j);
        NodeSet(k, 1+(pos(k)-1)*4:4+(pos(k)-1)*4) = TetraEleNode(i,:);
        pos(k) = pos(k)+1;
    end
end