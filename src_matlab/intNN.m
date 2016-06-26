function NN = intNN(bvalue,NodeInfo)
% NodeInfo indicates which node is on the surface
% NodeInfo format = [x x x x] if x = 1 the node is included, if x = 0 the
% node is not included

NN = [1/6 1/12 1/12 1/12;1/12 1/6 1/12 1/12;1/12 1/12 1/6 1/12; 1/12 1/12 1/12 1/6];

pos = find(NodeInfo == 0);

NN(pos,:) = 0;
NN(:,pos) = 0;
NN = NN*bvalue;
