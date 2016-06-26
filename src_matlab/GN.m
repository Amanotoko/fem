function fGN = GN(Node_Num, TetraEle, NodeCor,heat_ele,G)

%Calculate the heat generation 

fGN = sparse(Node_Num,1);

if isempty(heat_ele)
    return
else
    flag = find(TetraEle(:,4)==heat_ele); %find the position of the heat generation elements
    LGN = length(flag);

    for n = 1:LGN,
        Node = TetraEle(flag(n),6:9);
        nodecor = NodeCor(Node,2:4);
        Vmat = [ones(4,1) nodecor];
        V = det(Vmat)/6;
        fGN(Node) = fGN(Node)+G*tetra_intN('V',V,0);
    end
end