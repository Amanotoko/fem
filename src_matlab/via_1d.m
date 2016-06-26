function KBDB = via_1d(Via, KBDB_2d, NodeCor, LineEle)

KBDB = KBDB_2d;
Via = Via';
LVias = size(Via, 1);

for n = 1:LVias
    D = Via(n,2);
    Dpos = find(LineEle(:,4) == Via(n, 1));
    LDpos = length(Dpos);
    
    for k = 1:LDpos
        Node = LineEle(Dpos(k), 6:7);
        nodecor = NodeCor(Node, 4); % 4 represents the default via direction, z in xyz.
        
        l = abs(nodecor(1) - nodecor(2));
        B = [-1/l 1/l];
        BDBm = B'*D*B;
        KBDB(Node,Node) = KBDB(Node,Node) + BDBm;
    end
end