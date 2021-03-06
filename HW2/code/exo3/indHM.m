function [X, accpt] = indHM(x0,N)
% function [X] = indHM(x0,N)
%   Independent kernel

    u=0; % this variable will store the uniform distribution to simuate a bernoulli dist.
    alpha=zeros(N,1); 
    accpt=zeros(N,1);%the acceptation rate
    Y=0; % the proposal
    
    X=zeros(N,1);
    X(1)=x0;
    
    for n=2:N
        Y=normrnd(0,1);
        aux=exp(-.5*(X(n-1)^2-Y^2))* density(Y)/density(X(n-1));
        alpha(n)=min([1,aux]);
        
        u=rand;
        if u<alpha(n)
            X(n)=Y;
            accpt(n)=1;
        else
            X(n)=X(n-1);
             accpt(n)=0;
        end
    end
    
end