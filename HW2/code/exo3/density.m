function p = density( x )
    p = exp(-x.^2).*(2+ sin(5*x)+sin(2*x));
end

