function [Vol Surf Flux] = LoadBoundaryFile(filename)

%open the file
fid = fopen(filename);

%make sure the file is not empty
finfo = dir(filename);
fsize = finfo.bytes;

% if fsize >0
%     %read the file
%     fscanf(fid, '%s/n');
%     Vol_Num = fscanf(fid, '%d', 1);
%     %read volumne id
%     Vol = fscanf(fid, '%f', [2 Vol_Num]);
%     
%     fscanf(fid, '%s/n');
%     %read surface id
%     Surf_Num = fscanf(fid, '%d', 1);
%     Surf = fscanf(fid, '%f', [2 Surf_Num]);
%     
%     fscanf(fid, '%s/n');
%     %read surface id
%     flux_surf_Num = fscanf(fid, '%d', 1);
%     flux_surf = fscanf(fid, '%f', [2 flux_surf_Num]);
% 
% end
Vol = []; %Vol
Surf = []; %surface
Flux = []; %current boundary


while ~feof(fid)
    %read the file
    s = fscanf(fid, '%s/n');
    if strcmp(s, '$Surface')
        %read surf id
        Surf_Num = fscanf(fid, '%d', 1);
        Surf = fscanf(fid, '%f', [2 Surf_Num]);
    end
    
    if strcmp(s ,'$Volumn') || strcmp(s, '$Volume')
        %read line id
        Vol_Num = fscanf(fid, '%d', 1);
        Vol = fscanf(fid, '%f', [2 Vol_Num]);
    end
        
    if strcmp(s, '$Flux')
        %read flux
        Flux_Num = fscanf(fid, '%d', 1);
        Flux = fscanf(fid, '%f', [2 Flux_Num]);
    end
end

fclose(fid);

    