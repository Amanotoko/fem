function [E_x, E_y, E_z, E] = CalE(Node_ID, Nodes, NodeCor)

E_x = 0;
E_y = 0;
E_z = 0;

l = max(size(Nodes));
p1 = NodeCor(Node_ID, 2:4);

for i = 1:l
    p2 = NodeCor(Nodes(i), 2:4);
    [d, dx, dy, dz] = CalD(p1, p2);
    dV = NodeCor(Node_ID, 5) - NodeCor(Nodes(i), 5);
    E_mag = dV/d;
    E_x = E_x + E_mag*dx/d;
    E_y = E_y + E_mag*dy/d;
    E_z = E_z + E_mag*dz/d;
end

%E_x = E_x/l;
%E_y = E_y/l;
%E_z = E_z/l;
E = sqrt(E_x^2+ E_y^2+E_z^2);