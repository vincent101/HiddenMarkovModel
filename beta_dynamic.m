function b = beta_dynamic(M, p, B, v)

% BETA DYNAMIC(M,p,B,v) calculates the matrix of betas for the hmm with 
% transition matrix M, emission matrix B, and initial probabilities
% p, given the observations v

    [N m] = size(M);
    T = length(v);
    
    % initial beta to zeros
    b = zeros(N, T);
    % make bataT(j) = 1, the last column of beta
    b(:,T) = 1;
    % from the one before the last column
    for t = (T-1):-1:1
        for i = 1:N
            b(i,t) = M(i,:).*B(:,v(t+1))' * b(:,t+1);        
        end        
    end

end