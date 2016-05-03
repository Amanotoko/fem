function FEM_current_density(mshfile, boundaryfile, ppmshfile)

%mshfile = 'trial2.msh';
%mshfile = 't_thin.msh';
%mshfile = 'l.msh';
%mshfile = 'cross.msh';
%Material = [641 200; 640 148; 639 148; 638 0.6; 535 385; 534 1.3; 533 65]; % define the material type and their thermal conductivity
%Material = [29 1.7]; %trial2
[Volume Surf] = LoadBoundaryFile(boundaryfile);
Material = Volume'; %t.msh
h = 0;  % convection coefficient
Ta = 1;   % Amostphere temperture
%q = 0;    % Power apply to the surface
%conv_surf = [642 643 644 645]; %defind the convection surface
%flux_surf = 646;    % define the power surface
%conv_surf = 30;%trial2
%flux_surf = 31;%trial2
ro_Cu = 1.7e-8;

surf1 = 53;
%surf2 = 54;
%surf3 = 55;

G = 0;          %Heat generation coefficient
heat_ele = [];  % Internal element whose generate heat

tic;
[MeshFormat NodeCor EleList] = LoadMeshFile(mshfile);
tRF = toc;
fprintf('Time for reading the File: %.2f s!\n',tRF);


TetraEle = EleList.TetraEle;
TriEle = EleList.TriEle;
TetraEleNode = TetraEle(:,6:9);
TriEleNode = TriEle(:,[4 6:8]);  
Node_Num = size(NodeCor,1);
NodeCor = NodeCor*10^-6;

tic;
KBDB = BDB(Node_Num,TetraEle,NodeCor,Material);
tSF = toc;
fprintf('Time for Calculating KBDB: %.2f s!\n',tSF);

%tic;
%[KhNN fhTN] = hN(Node_Num,TriEleNode,TetraEleNode,NodeCor,surf1,h,Ta);
%tSM = toc;
%fprintf('Time for Calculating KhNN and fhTN: %.2f s!\n',tSM);

%tic;
%fqN = qN(Node_Num, TetraEleNode,TriEleNode,NodeCor,flux_surf,q);
%fGN = GN(Node_Num, TetraEle, NodeCor,heat_ele,G);
%tAS = toc;
%fprintf('Time for Calculating fqN and fGN: %.2f s!\n',tAS);

tic;
%K = KBDB+KhNN;
K = KBDB;
f = sparse(Node_Num,1);
%f = fhTN+fqN+fGN;

[a, Surf_Num] = size(Surf);

for i = 1:Surf_Num
    [K f] = boundary(Node_Num, TriEleNode, TetraEleNode, NodeCor, K, f, Surf(1, i), Surf(2, i));
end

%f = fhTN + fGN;
T = K\f;
tCal = toc;
%fprintf('Time for Calulating the result: %.2f s!\n',tCal);

%fprintf('Total Time Spend: %.2f s (%.2f hr)!\n', tRF+tSF+tSM+tAS,(tRF+tSF+tSM+tAS)/3600);
%Cal E
NodeCor(:,5) = T;
NodeSet = GroupNodes(TetraEleNode, Node_Num);
EList = GetEList(NodeSet, NodeCor, Node_Num); 
EList = EList / ro_Cu;  

%OFilename = 'output.msh';
TimeStep = 0;
%PostFileO(Node_Num,mshfile,TimeStep,T,OFilename);
PostFileO(Node_Num,mshfile,TimeStep,EList(:,4),ppmshfile);