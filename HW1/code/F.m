function y=F(x,z)
    y=normcdf(sqrt(1/x)*(x*z-1))+exp(2*z)*normcdf(-sqrt(1/x)*(x*z+1));
end