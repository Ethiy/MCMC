function y=s(n,x,z,t)
    C=.5*(exp(z)+exp(-z))*exp(-x*z^2/2);
    if n==0
        y=C*a(0,x,t);
    else
        y=s(n-1,x,z,t)+C*((-1)^n)*a(n,x,t);
    end
end