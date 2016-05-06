function KBDB = BDB(Node_Num,TetraEle, NodeCor, Material)
% Generate the matrix K for all the finite elements
% where KX = f. 

KBDB = sparse(Node_Num,Node_Num);

LMtl = size(Material,1);

for n = 1:LMtl,
    D = [Material(n,2) 0 0; 0 Material(n,2) 0; 0 0 Material(n,2)];
    Dpos = find(TetraEle(:,4)==Material(n,1));
    LDpos = length(Dpos);

    for k = 1:LDpos,
        % see eq(3.261) in the book by R. Lewis pp. 91
        Node = TetraEle(Dpos(k),6:9);
        nodecor = NodeCor(Node,2:4);
        [V B] = BMat(nodecor);
        BDBm = B'*D*B*V;
        KBDB(Node,Node) = KBDB(Node,Node)+ BDBm;
    end
end
