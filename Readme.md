# Hidden Markov Model
Codes below at HMM/main.m

## 1 Import given data

    M = dlmread('M.txt');
    p = dlmread('p.txt');
    B = dlmread('B.txt');
    v = dlmread('v.txt');
    
## 2 Calculate Alpha, Beta and Gamma
    
    alpha = alpha_dynamic(M,p,B,v);
    beta = beta_dynamic(M,p,B,v);
    gamma = gamma_dynamic(alpha,beta);
    
## 3 Extract specifically value
    
    >> beta(13,3)
    ans = 1.1151e-12
    >> gamma(10,5)
    ans = 0.0524
    
