%dir = '../../Galileo_cases/';
%dir = './'
dir = '../fem_case/'
name = 't_thin';

m = '.msh';
b = '.cond';
p = 'pp';

mf = strcat(dir, name, m);
bf = strcat(dir, name, b);
pf = strcat(dir, p, name, m);


% 2D FEM
FEM_2d(mf,bf,pf);

% 3D FEM
%FEM_current_density(mf,bf,pf);
