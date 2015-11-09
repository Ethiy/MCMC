function [X]=sechrand(n,m)
% function [X]=sechrand(n,m)
%   n x m the matrix dimension
%   the output has a sech dist.

    u=rand(n,m);
    X=invsech(u);
end
