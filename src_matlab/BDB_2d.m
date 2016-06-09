function KBDB = BDB_2d(Node_Num,TriEle, NodeCor, Material)
% Generate the matrix K for all the finite elements
% where KX = f. 

KBDB = sparse(Node_Num, Node_Num);

LMtl = size(Material, 1);

for n = 1:LMtl,
    D = [Material(n,2) 0; 0 Material(n,2)];
    Dpos = find(TriEle(:,4)==Material(n,1));
    LDpos = length(Dpos);

    for k = 1:LDpos,
        Node = TriEle(Dpos(k),6:8);
        nodecor = NodeCor(Node,2:4);
        [V B] = BMat_2d(nodecor, 1, 2);
        BDBm = B'*D*B*V;
        KBDB(Node,Node) = KBDB(Node,Node)+ BDBm;
    end
end
