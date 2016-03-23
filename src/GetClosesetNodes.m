function Nodes = GetClosesetNodes(Node_ID, NodeSet)

pos = 1;
NodeSet = unique(NodeSet);
l = max(size(NodeSet));
for i = 1:l
    val = NodeSet(i);
    if val ~= 0 && val ~= Node_ID
        Nodes(pos) = val;
        pos = pos + 1;
    end
end