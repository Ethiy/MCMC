function v=quarticpotential(x,m,s,l)
%function v=quarticpotential(x,m,l)
%   x The position
%   m, s, l parameters

    aux=s/2*(x-m)^2+l*(x-m)^4;
    v=exp(-aux); %Boltzman dist. beta=1
end