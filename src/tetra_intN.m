function N = tetra_intN(type,bvalue,NodeInfo)
% type can be V for volume, A for Area

if type == 'V'
    N= ones(4,1)/4*bvalue;
else if type == 'A'
        N = ones(4,1)/3*bvalue;
        N(NodeInfo==0) = 0;
    else 
         disp('Error: type should be V for vloume or A for Area');
    end
end

