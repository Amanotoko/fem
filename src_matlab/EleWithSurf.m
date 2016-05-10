function [InfoList NodeInfo] = EleWithSurf(TetraEle_Node,TriEle_Node,SurfNo)
% EleWithSurf is a function to find out the node information of tetrahedron
% elements with specific surface condition such as convection surface and
% radiation surface
% InfoList: List of the element index contians specific surface
% NodeInfo: if the elements have that node same as the surface = 1 else 0

%%%%% test
% clc;
% clear;
% mshfile = 'TSV3new.msh';
% [MeshFormat NodeCor EleList] = LoadMeshFile(mshfile);
% TetraEle = EleList.TetraEle;
% TriEle = EleList.TriEle;
% [Num_Ele N4Col]= size(TetraEle);
% N3Col = size(TriEle,2);
% TetraEle_Node = TetraEle(:,N4Col-3:N4Col);  % Load the nodes of the tetrahedral element
% TriEle_Node = TriEle(:,[4 N3Col-2:N3Col]);      % Load the surface index and the node of the surface element
% conv_surf = [10743 10792 10748 10747 10746 10745 10744];
% SurfNo = conv_surf;
%%%%%%  

SSN = length(SurfNo);
pos = [];
for n = 1:SSN,
pos= [pos; find(TriEle_Node(:,1) == SurfNo(n))];   % find the elements that have converction surface
end
% 
TeNodeS = size(TetraEle_Node,1);
N = 1:TeNodeS;
TetraEle_Node1 = [N' TetraEle_Node];


Surf_Node = TriEle_Node(pos,2:4);
% NodeInfo = ismember(TetraEle_Node(:,2:5),Surf_Node);
TempNI = ismember(TetraEle_Node1(:,2:5),Surf_Node);
% TempS = sort(NodeInfo,2,'descend');        % sort the output in desecnding order by row
TempS = sort(TempNI,2,'descend'); 
% InfoList = find(TempS(:,3)==1);
STIL = sum(TempS,2);
TIL3 = find(STIL==3);
TIL4 = STIL==4;
TNU3 = TetraEle_Node1(TIL3,:);
TNU4 = TetraEle_Node1(TIL4,:);

LSN = size(Surf_Node,1);
LTIL3 = size(TIL3,1);
TNI = ismember(TNU3(:,2:5),Surf_Node);
InfoList = zeros(LSN,1);
NodeInfo = zeros(LSN,4);
for n = 1:LTIL3
    Temp = ismember(Surf_Node,TNU3(n,2:5));
    Temp1 = sum(Temp,2);
    pos = find(Temp1==3);
    if isempty(pos)
%         disp('Hi')
    else
    InfoList(pos) = TNU3(n,1);
    NodeInfo(pos,:) = TNI(n,:);
%     TNU3(pos,:) = [];
    end
end

RSN = find(InfoList==0);
LRSN = length(RSN);

for n = 1:LRSN
    Temp = ismember(TNU4(:,2:5),Surf_Node(RSN(n),:));
    Temp1 = sum(Temp,2);
    pos = find(Temp1==3);
    if isempty(pos)
    else
    InfoList(RSN(n)) = TNU4(pos,1);
    NodeInfo(RSN(n),:) = Temp(pos,:);
    end
end

% toc