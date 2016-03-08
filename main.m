M = dlmread('M.txt');
p = dlmread('p.txt');
B = dlmread('B.txt');
v = dlmread('v.txt');

alpha = alpha_dynamic(M,p,B,v);
beta = beta_dynamic(M,p,B,v);
gamma = gamma_dynamic(alpha,beta);

beta(13,3)
gamma(10,5)
