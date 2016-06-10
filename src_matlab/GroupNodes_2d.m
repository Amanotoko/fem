function NodeSet = GroupNodes(TriEleNode, LineNode, Node_Num)

% group physical close nodes

NodeSet = [];
pos = ones(Node_Num, 1);

[m, n] = size(TriEleNode);
for i = 1:m
    for j = 2:n
        k = TriEleNode(i,j);
        NodeSet(k, 1+(pos(k)-1)*3:3+(pos(k)-1)*3) = TriEleNode(i,2:4);
        pos(k) = pos(k)+1;
    end
end

[m, n] = size(LineNode);
for i = 1:m
    for j = 2:n
        k = LineNode(i,j);
        NodeSet(k, 1+(pos(k)-1)*2:2+(pos(k)-1)*2) = LineNode(i,2:3);
        pos(k) = pos(k)+1;
    end
end
