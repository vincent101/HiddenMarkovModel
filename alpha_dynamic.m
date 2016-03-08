function a = alpha_dynamic(M, p, B, v)

% ALPHA DYNAMIC(M,p,B,v) calculates the matrix of alpha's the 
% hmm with transition matrix M, emission matrix B, and initial 
% probabilities p, given the observations v

    [N m] = size(M);
    T = length(v);
    
    % first column of alpha
    for j = 1:N
        a(j,1) = p(j)*B(j,v(1));
    end
    % from second column
    for t = 2:T
        for j = 1:N
            a(j,t) = B(j,v(t))*a(:,t-1)'*M(:,j);    
        end       
    end

end