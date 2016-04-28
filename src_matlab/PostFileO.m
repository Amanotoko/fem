function F = PostFileO(Node_Num,mshfile,TimeStep,T,OFilename)
% Output the PostProcessing File for gmsh

fidR = fopen(mshfile);
fidW = fopen(OFilename,'w');

while ~feof(fidR),
    N = fgets(fidR);
    fprintf(fidW,'%s',N);
end
fclose(fidR);

fprintf(fidW,'$NodeData\n');


num_of_string_tag = 1;
fprintf(fidW,'%d\n',num_of_string_tag);

name_of_view = 'scalar view';
fprintf(fidW,'"%s"\n',name_of_view);   

num_of_real_tag = 1;
fprintf(fidW,'%d\n',num_of_real_tag);

time_v = 0;
fprintf(fidW,'%f\n',time_v);

num_of_integer_tag = 3;
fprintf(fidW,'%d\n',num_of_integer_tag);
fprintf(fidW,'%f\n',TimeStep);
num_component = size(T,2);
fprintf(fidW,'%d\n',num_component);
fprintf(fidW,'%d\n',Node_Num);

n = 1:Node_Num;
T = full(T);
T = [n; T'];
tp = '%d';
for k = 1:num_component,
    tp = [tp ' %f'];
end;
tp = [tp '\n'];
fprintf(fidW,tp,T);
fprintf(fidW,'$EndNodeData');
fclose(fidW);
F = 'Post Processing file is created!';
disp(F);