function [X] = quartmultiplicativeHM(x0,N,m,s,l)
% function [X] = expmultiplicativeHM(x0,N)
%   X the HM sequence simulating the logistic distribution
%   x0 the initial value
%   N the number of iterations
%   m, s, l parameters

    
    u=0; % this variable will store the uniform distribution to simuate a bernoulli dist.
    eps=0; % this variable will store the dist g
    alpha=0; %the acceptation rate
    Y=0; % the proposal
    
    X=zeros(N,1);
    X(1)=x0;
    
    for n=2:N
        u=rand;
        eps=2*rand-1; % uniformly distributed on (-1,1)
        if u<.5
            Y=X(n-1)*eps;
            aux=quarticpotential(Y,m,s,l)/quarticpotential(X(n-1),m,s,l)*abs(eps);
            alpha=min([1,aux]);
        else
            Y=X(n-1)/eps;
            aux=quarticpotential(Y,m,s,l)/quarticpotential(X(n-1),m,s,l)/abs(eps);
            alpha=min([1,aux]);
        end
        
        u=rand;
        if u<alpha
            X(n)=Y;
        else
            X(n)=X(n-1);
        end
            
    end
    
end