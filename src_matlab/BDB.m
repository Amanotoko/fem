function KBDB = BDB(Node_Num,TetraEle, NodeCor, Material)

% Calculate the structure matrix of the device

KBDB = sparse(Node_Num,Node_Num);

LMtl = size(Material,1);

for n = 1:LMtl,
    D = [Material(n,2) 0 0; 0 Material(n,2) 0; 0 0 Material(n,2)];
    Dpos = find(TetraEle(:,4)==Material(n,1));
    LDpos = length(Dpos);

    for k = 1:LDpos,
    Node = TetraEle(Dpos(k),6:9);
    nodecor = NodeCor(Node,2:4);
    [V B] = BMat(nodecor);
    BDBm = B'*D*B*V;
    KBDB(Node,Node) = KBDB(Node,Node)+ BDBm;
    end
end
