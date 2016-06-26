function [Surf Line Via Flux] = LoadB_2d(filename)

%open the file
fid = fopen(filename);

%make sure the file is not empty
finfo = dir(filename);
fsize = finfo.bytes;
% 
% if fsize >0
%     %read the file
%     fscanf(fid, '%s/n');
%     
%     Surf_Num = fscanf(fid, '%d', 1);
%     %read surf id
%     Surf = fscanf(fid, '%f', [2 Surf_Num]);
%     
%     fscanf(fid, '%s/n');
%     %read boundary line id
%     Line_Num = fscanf(fid, '%d', 1);
%     Line = fscanf(fid, '%f', [2 Line_Num]);
%     
%     fscanf(fid, '%s/n');
%     %read vias
%     Via_Num = fscanf(fid, '%d', 1);
%     Via = fscanf(fid, '%f', [2 Via_Num]);
% end
Surf = []; %surface
Line = []; %voltage boundary
Via = []; %vias
Flux = []; %current boundary


while ~feof(fid)
    %read the file
    s = fscanf(fid, '%s/n');
    if strcmp(s, '$Surface')
        %read surf id
        Surf_Num = fscanf(fid, '%d', 1);
        Surf = fscanf(fid, '%f', [2 Surf_Num]);
    end
    
    if strcmp(s ,'$Line')
        %read line id
        Line_Num = fscanf(fid, '%d', 1);
        Line = fscanf(fid, '%f', [2 Line_Num]);
    end
    
    if strcmp(s, '$Via')
        %read vias
        Via_Num = fscanf(fid, '%d', 1);
        Via = fscanf(fid, '%f', [2 Via_Num]);
    end
    
    if strcmp(s, '$Flux')
        %read flux
        Flux_Num = fscanf(fid, '%d', 1);
        Flux = fscanf(fid, '%f', [2 Flux_Num]);
    end
end

fclose(fid);

    