function [MeshFormat NodeCor EleList] = LoadMeshFile(filename)
% clc;
% clear;
% filename = 'TSV3.msh';

MeshFormat = struct('Version',{0}, 'file_type',{0},'data_size',{0});
EleList = struct('PtEle',{[]},'LineEle',{[]},'TriEle',{[]},'TetraEle',{[]});

% open the file
fid = fopen(filename);

%make sure the file is not empty
finfo = dir(filename);
fsize = finfo.bytes;

if fsize >0
    %read teh file
    while ~feof(fid)
        fscanf(fid, '%*s/n');
        MF = fscanf(fid, '%f', [1 3]);
        fscanf(fid, '%s\n%s/n');
        %Read the number of Nodes
        Node_Num = fscanf(fid, '%d',1);
        %Read the data into NodeCor
        TempNodeCor = fscanf(fid, '%f', [4, Node_Num]);
        fscanf(fid, '%s\n%s/n');
        
        %Read the number of Elements
        Ele_Num = fscanf(fid, '%d',1);
        %since Elements data has differnt type (point, face, volumn)
        %the column numbers are not the same, so use the missing element in
        %the date will be replaced by -1 as indicator
        TempEleList = textscan(fid, '%f %f %f %f %f %f %f %f %f',Ele_Num,'EmptyValue', -1);
        fscanf(fid,'%*s\n');
    end
end

% close the file
fclose(fid);
MeshFormat.Version = MF(1);
MeshFormat.file_type = MF(2);
MeshFormat.data_size = MF(3);
%fscan read the number in column order, so transpose the result         
NodeCor = TempNodeCor';
%Since EleList from textscan is in cell array form, convert it back to
%matrix from
TempEleList = cell2mat(TempEleList);
%The second column of the EleList is indicating the type of the elements
PtPos = find(TempEleList(:,2)==15);
LinePos = find(TempEleList(:,2)==1);
TriPos = find(TempEleList(:,2)==2);
TetraPos = find(TempEleList(:,2)==4);

if isempty(PtPos),
    disp('Attention: File does not have point elements!');
else
EleList.PtEle = TempEleList(PtPos,:);
EleList.PtEle(:,EleList.PtEle(1,:)==-1) = []; 
end;
if isempty(LinePos),
    disp('Attention: File does not have line elements!');
else
EleList.LineEle = TempEleList(LinePos,:);
EleList.LineEle(:,EleList.LineEle(1,:)==-1) = []; 
end;
if isempty(TriPos),
    disp('Attention: File does not have Triangular elements!');
else
EleList.TriEle = TempEleList(TriPos,:);
EleList.TriEle(:,EleList.TriEle(1,:)==-1) = [];
end;
if isempty(TetraPos),
    disp('Attention: File does not have Triangular elements!');
else
EleList.TetraEle = TempEleList(TetraPos,:);
end
% Delete column that has -1

