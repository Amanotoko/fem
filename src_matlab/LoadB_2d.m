function [Surf Line Via] = LoadB_2d(filename)

%open the file
fid = fopen(filename);

%make sure the file is not empty
finfo = dir(filename);
fsize = finfo.bytes;

if fsize >0
    %read the file
    fscanf(fid, '%s/n');
    
    Surf_Num = fscanf(fid, '%d', 1);
    %read surf id
    Surf = fscanf(fid, '%d', [2 Surf_Num]);
    
    fscanf(fid, '%s/n');
    %read boundary line id
    Line_Num = fscanf(fid, '%d', 1);
    Line = fscanf(fid, '%f', [2 Line_Num]);
    
    fscanf(fid, '%s/n');
    %read vias
    Via_Num = fscanf(fid, '%d', 1);
    Via = fscanf(fid, '%f', [2 Via_Num]);
end

fclose(fid);

    