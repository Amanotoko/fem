function FEM_current_density(mshfile, boundaryfile, ppmshfile)



[Volume Surf] = LoadBoundaryFile(boundaryfile);
% volume is the volume using one material. In this code, we assume only one volume (homegeneous material)
Material = Volume';
h = 1;  % convection coefficient
Ta = 1;   % Amostphere temperture
% Surf is the boundary conditons read from the boundary conditon file


% copper resistivity 
ro_Cu = 1.7e-8;

tic;
% read the mesh file generated by Gmesh
[MeshFormat NodeCor EleList] = LoadMeshFile(mshfile);
tRF = toc;
fprintf('Time for reading the File: %.2f s!\n',tRF);


TetraEle = EleList.TetraEle;
TriEle = EleList.TriEle;

% read the nodes for all the tetrahedrons
TetraEleNode = TetraEle(:,6:9);
% read the nodes for all the triangles at surface
TriEleNode = TriEle(:,[4 6:8]);  

% NodeCor is the node coornidates, we adjust the node coornidate to micro
% unit (10^-6 unit). Node_Num is the number of nodes.
Node_Num = size(NodeCor,1);
NodeCor = NodeCor*10^-6;

tic;
%  Build the matrix K for all the finite elements. It is called KBDB here.
%  We use the variational approach (see pp. 88).
KBDB = BDB(Node_Num,TetraEle,NodeCor,Material);
tSF = toc;
fprintf('Time for building finite element matrix K: %.2f s!\n',tSF);

%tic;
%[KhNN fhTN] = hN(Node_Num,TriEleNode,TetraEleNode,NodeCor,[7007],h,Ta);
%tSM = toc;
%fprintf('Time for Calculating KhNN and fhTN: %.2f s!\n',tSM);

%tic;
%fqN = qN(Node_Num, TetraEleNode,TriEleNode,NodeCor,flux_surf,q);
%fGN = GN(Node_Num, TetraEle, NodeCor,heat_ele,G);
%tAS = toc;
%fprintf('Time for Calculating fqN and fGN: %.2f s!\n',tAS);

tic;
% K is the finite element matrix from the tetrahedrons
% f is the right hand side input vector
K = KBDB;
f = sparse(Node_Num,1);

%K = K + KhNN;
%f = f+fhTN;

[a, Surf_Num] = size(Surf);

% Adjust the K and right-hand side vector f based on boundary conditions.
for i = 1:Surf_Num
    [K f] = boundary_s(TriEle, K, f, Surf(1,i), Surf(2,i));
    %[K f] = boundary(Node_Num, TriEleNode, TetraEleNode, NodeCor, K, f, Surf(1, i), Surf(2, i));
end

% solve for unknown Volt, which is the potential.
Volt = K\f;
tCal = toc;
%fprintf('Time for matrix solving: %.2f s!\n',tCal);

% Compute the current density by computing the electrical field first.
% Electrical field is derivative of voltage potential. E = dV/dr. r is
% distance. 
NodeCor(:,5) = Volt;

% find the neighbor nodes for each node in the FEM so that we can compute
% the dV/dr, 
NodeSet = GroupNodes(TetraEleNode, Node_Num);

% Then compute the dV/dr 
EList = GetEList(NodeSet, NodeCor, Node_Num); 

% compute the current density = E/rho, rho is copper resistivity.
EList = EList / ro_Cu;  

% dump the results. Each node will have a color to indicate its current
% around node.
TimeStep = 0;

vfile = strcat(ppmshfile, 'v');

PostFile1(Node_Num,mshfile,TimeStep,Volt,vfile);
PostFileO(Node_Num,mshfile,TimeStep,EList(:,4), ppmshfile);
