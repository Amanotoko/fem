function EList = GetEList(NodeSet, NodeCor, Node_Num)

for i = 1:Node_Num
    Nodes = GetClosesetNodes(i, NodeSet(i, :));
    [E_x, E_y, E_z, E] = CalE(i, Nodes, NodeCor);
    EList(i, 1:5) = [E_x, E_y, E_z, sqrt(E_x^2 + E_y^2), E];
end

