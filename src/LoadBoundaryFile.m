function [Vol Surf] = LoadBoundaryFile(filename)

%open the file
fid = fopen(filename);

%make sure the file is not empty
finfo = dir(filename);
fsize = finfo.bytes;

if fsize >0
    %read the file
    fscanf(fid, '%s/n');
    
    Vol_Num = fscanf(fid, '%d', 1);
    %read volumne id
    Vol = fscanf(fid, '%d', [2 Vol_Num]);
    
    fscanf(fid, '%s/n');
    %read surface id
    Surf_Num = fscanf(fid, '%d', 1);
    Surf = fscanf(fid, '%f', [2 Surf_Num]);
end

fclose(fid);

    