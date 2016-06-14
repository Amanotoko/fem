%dir = '../../Galileo_cases/';
dir = '../'
name = 't_thin';

m = '.msh';
b = '.cond';
p = 'pp';

mf = strcat(dir, name, m);
bf = strcat(dir, name, b);
pf = strcat(dir, p, name, m);

%FEM_2d(mf,bf,pf);
FEM_current_density(mf,bf,pf);
