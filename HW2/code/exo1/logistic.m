function [l] = logistic(x,mean,s)
%function [ E ] = logistic(mean,s)
%   mean is the mean
%   the variance is \propto s^2
%   l the output
    
    y=-(x-mean)/s;
    l=exp(y)/(s*(1+exp(y))^2);
end

