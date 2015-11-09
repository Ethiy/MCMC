function g=sampleG1(z,t)
    if t<1/z
        g=truncInvGaus1(1/z,t);
    else
        g=truncInvGaus2(1/z,t);
    end
end