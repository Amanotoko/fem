dir = '../example/';

name = 'ADC_RST_M';

m = '.msh';
b = '.cond';
p = 'pp';

mf = strcat(dir, name, m);
bf = strcat(dir, name, b);
pf = strcat(dir, p, name, m);
%mf = '../example/Net109.msh';
%bf = '../example/Net109.cond';
%pf = '../example/ppNet109.msh';
%mf = '../example/A3_GPIO.msh';
%bf = '../example/A3_GPIO.cond';
%pf = '../example/ppA3_GPIO.msh';
FEM_current_density(mf, bf, pf);

