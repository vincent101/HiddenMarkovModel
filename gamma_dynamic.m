 function g = gamma_dynamic(alpha,beta)
 
% GAMMA DYNAMIC(alpha,beta) calculate gamma for hmm given alpha and beta

    [N T] = size(alpha);
    [N1 T1] = size(beta);
    
    % make sure alpha and beta have same dimension
    if N~=N1 || T~=T1
        disp('ERROR: Wrong input, alpha and beta have different dimension');
    end
    
    g = zeros(N,T);    
    for t = 1:T
        g(:,t) = alpha(:,t).*beta(:,t);
        g(:,t) = g(:,t) / sum(g(:,t));
    end

 end
   