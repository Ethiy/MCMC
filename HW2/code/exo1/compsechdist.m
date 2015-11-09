function []=compsechdist()
%function []=compsechdist()
%   plots the qq-plot of the true dist comparing with the MCMC

    N=5000;
    X = sechmultiplicativeHM(2,N);
    Y = sechrand(N,1);
    qqplot(X,Y);
end